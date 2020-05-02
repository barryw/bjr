# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StatsPerMinuteJob, type: :job do
  include ActiveJob::TestHelper

  it 'computes minutely stats for jobs that ran' do
    travel_to Time.zone.local(2020, 5, 2, 13, 00, 00)

    admin = create(:admin1)
    job = create(:job1, user:admin)
    jobrun1 = create(:successful_job_run, job: job, start_time: DateTime.now.utc - 10.minutes, end_time: DateTime.now.utc - 5.minutes)
    jobrun2 = create(:failed_job_run, job: job, start_time: DateTime.now.utc - 10.minutes, end_time: DateTime.now.utc - 3.minutes)

    perform_enqueued_jobs do
      start_dt = DateTime.now.utc - 10.minutes
      end_dt = start_dt + 59.seconds

      expect(JobStat).to receive(:create).with({user_id: admin.id, runs: 2, failed: 1, avg_runtime: BigDecimal(360),
        min_runtime: 300, max_runtime: 420, start_dt: start_dt, end_dt: end_dt, period: :minute})

      StatsPerMinuteJob.perform_later
    end

    travel_back
  end
end
