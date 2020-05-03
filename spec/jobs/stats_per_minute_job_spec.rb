# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StatsPerMinuteJob, type: :job do
  include ActiveJob::TestHelper

  it 'computes minutely stats for jobs that ran' do
    travel_to Time.zone.local(2020, 5, 2, 13, 00, 00)

    admin = create(:admin1)
    job = create(:job1, user:admin)
    jobrun1 = create(:successful_job_run, job: job, start_time: DateTime.now - 9.minutes - 30.seconds, end_time: DateTime.now - 5.minutes)
    jobrun2 = create(:failed_job_run, job: job, start_time: DateTime.now - 9.minutes - 30.seconds, end_time: DateTime.now - 3.minutes)

    perform_enqueued_jobs do
      StatsPerMinuteJob.perform_later

      js = JobStat.all
      expect(js.length).to eq(10)
      expect(js[0].runs).to eq(2)
      expect(js[0].failed).to eq(1)
      expect(js[0].start_dt).to eq(Time.zone.local(2020, 5, 2, 12, 50, 00))
      expect(js[0].end_dt).to eq(Time.zone.local(2020, 5, 2, 12, 50, 59))
      expect(js[0].avg_runtime).to eq(330)
      expect(js[0].min_runtime).to eq(270)
      expect(js[0].max_runtime).to eq(390)
    end

    travel_back
  end
end
