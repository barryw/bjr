class JobFinderJob < ApplicationJob
  def perform
    jobs = Job.where('next_run < ? and enabled = ?', Time.current, true).find_each do |job|
      ShellJob.perform_later job.id
    end
  end
end
