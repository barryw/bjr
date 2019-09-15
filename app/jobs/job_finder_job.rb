class JobFinderJob < ApplicationJob
  def perform
    jobs = Job.where('next_run < ? and disabled = ?', Time.current, false).find_each do |job|
      ShellJob.perform_later job.id
    end
  end
end
