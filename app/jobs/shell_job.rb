# frozen_string_literal: true

require 'open3'

#
# Execute a shell job
#
class ShellJob < ApplicationJob
  queue_as :job_runner

  def perform(jobid, is_manual = false)
    job = Job.find(jobid)
    run = job.start_job(is_manual)
    file = write_command(job)

    success = true
    error_message = ''
    stdout, stderr, status = Open3.capture3(file.path)
    return_code = status.exitstatus
    success = return_code&.zero?
  rescue StandardError
    success = false
    error_message = $!
  ensure
    file&.unlink
    job&.stop_job(run, return_code, success, error_message, stdout, stderr)
  end

  private

  def write_command(job)
    file = Tempfile.new("job#{job.id}")

    unless job.command.start_with? '#!'
      file.puts '#!/bin/bash'
      file.puts
      file.puts "# Shell script for job #{job.id}"
    end

    file.puts job.command
    file.close

    logger.debug "Job #{job.id} file written to #{file.path}"
    logger.debug File.read(file.path)

    File.chmod(0o755, file.path)

    file
  end
end
