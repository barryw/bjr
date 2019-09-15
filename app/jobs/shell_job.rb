require 'open3'

class ShellJob < ApplicationJob
  def perform(jobid)
    job = Job.find(jobid)
    jobrun = JobRun.create(job: job, start_time: Time.current)
    stdout, stderr, status = Open3.capture3(job.command)
    jobrun.return_code = status.exitstatus
    jobrun.success = (status.exitstatus == 0)
    jobrun.stdout = stdout
    jobrun.stderr = stderr
  rescue
    jobrun.success = false
    jobrun.error_message = $!
  ensure
    job.last_run = Time.current
    job.save
    jobrun.end_time = Time.current
    jobrun.save
  end
end
