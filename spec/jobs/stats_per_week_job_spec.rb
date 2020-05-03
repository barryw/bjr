# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StatsPerWeekJob, type: :job do
  include ActiveJob::TestHelper

  it 'computes weekly stats for jobs that ran' do
    travel_to Time.zone.local(2020, 4, 26, 0, 0, 0)

    admin = create(:admin1)
    job = create(:job1, user: admin)
    # This run represents the last run from the previous weekly stat. We'll start counting after this.
    jobrun1 = create(:successful_job_run, job: job, start_time: DateTime.now, end_time: DateTime.now + 1.minute)

    jobrun2 = create(:successful_job_run, job: job, start_time: DateTime.now + 1.hour, end_time: DateTime.now + 1.hour + 30.minutes)
    jobrun3 = create(:failed_job_run, job: job, start_time: DateTime.now + 1.day, end_time: DateTime.now + 1.day + 1.hour)

    travel_to Time.zone.local(2020, 5, 2, 0, 0, 0)

    perform_enqueued_jobs do
      StatsPerWeekJob.perform_later

      js = JobStat.all

      expect(js.length).to eq(1)
      expect(js[0].runs).to eq(2)
      expect(js[0].failed).to eq(1)
      expect(js[0].start_dt).to eq(Time.zone.local(2020, 4, 26, 0, 0, 1))
      expect(js[0].end_dt).to eq(Time.zone.local(2020, 5, 3, 0, 0, 0))
      expect(js[0].avg_runtime).to eq(2700)
      expect(js[0].min_runtime).to eq(1800)
      expect(js[0].max_runtime).to eq(3600)
    end

    travel_back
  end
end
