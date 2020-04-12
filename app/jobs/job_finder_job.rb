# frozen_string_literal: true

class JobFinderJob < ApplicationJob
  queue_as :job_finder

  def perform
    Job.schedulable.find_each do |job|
      ShellJob.perform_later job.id
    end
  end
end
