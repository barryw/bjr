require 'open3'

class ShellJob < ApplicationJob
  def perform(jobid)
    job = Job.find(jobid)
    run = job.start_job
    success = true
    error_message = ''
    stdout, stderr, status = run_task(job)
    return_code = status.exitstatus
    success = (return_code == 0)
  rescue
    success = false
    error_message = $!
  ensure
    job.stop_job(run, return_code, success, error_message, stdout, stderr)
  end

private

  def run_task(job)
    Open3.capture3(job.command)
  end
end
