require 'rails_helper'

RSpec.describe JobFinderJob, type: :job do
  include ActiveJob::TestHelper

  it "Looks for jobs that need to be performed" do
    perform_enqueued_jobs do
      admin = create(:admin1)
      job = create(:job1, user: admin, enabled: true, running: false, cron: '* * * * *')
      next_run = job.next_run
      travel_to Time.current + 2.minutes
      JobFinderJob.perform_later
      travel_back
      job.reload
      expect(job.next_run).not_to eq(next_run)
      expect(job.job_runs.length).to eq(1)
    end
  end
end
