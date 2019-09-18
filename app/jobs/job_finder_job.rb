class JobFinderJob < ApplicationJob
  def perform
    jobs = Job.schedulable.find_each do |job|
      ShellJob.perform_later job.id
    end
  end
end
