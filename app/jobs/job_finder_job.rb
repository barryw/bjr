# frozen_string_literal: true

#
# This job runs every minute to look for schedulable jobs
#
class JobFinderJob < ApplicationJob
  queue_as :job_finder

  def perform
    Job.schedulable.find_each do |job|
      ShellJob.perform_later job.id
    end
  end
end
