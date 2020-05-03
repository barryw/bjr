# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StatsPerHourJob, type: :job do
  include ActiveJob::TestHelper

  it 'computes hourly stats for jobs that ran' do
    travel_to Time.zone.local(2020, 5, 2, 13, 00, 00)

    admin = create(:admin1)
    job = create(:job1, user:admin)
    jobrun1 = create(:successful_job_run, job: job, start_time: DateTime.now - 10.minutes, end_time: DateTime.now - 5.minutes)
    jobrun2 = create(:failed_job_run, job: job, start_time: DateTime.now - 8.minutes, end_time: DateTime.now - 3.minutes)

    perform_enqueued_jobs do
      StatsPerHourJob.perform_later

      js = JobStat.all
      expect(js.length).to eq(1)
      expect(js[0].runs).to eq(2)
      expect(js[0].failed).to eq(1)
      expect(js[0].start_dt).to eq(Time.zone.local(2020, 5, 2, 12, 00, 00))
      expect(js[0].end_dt).to eq(Time.zone.local(2020, 5, 2, 12, 59, 59))
      expect(js[0].avg_runtime).to eq(300)
      expect(js[0].min_runtime).to eq(300)
      expect(js[0].max_runtime).to eq(300)
    end

    travel_back
  end
end
