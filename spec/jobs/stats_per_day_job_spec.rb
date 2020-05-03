# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StatsPerDayJob, type: :job do
  include ActiveJob::TestHelper

  it 'computes daily stats for jobs that ran' do
    travel_to Time.zone.local(2020, 5, 2, 13, 00, 00)

    admin1 = create(:admin1)
    admin2 = create(:admin2)

    job1 = create(:job1, user: admin1)
    job2 = create(:job2, user: admin2)

    jobrun1 = create(:successful_job_run, job: job1, start_time: DateTime.now - 10.minutes, end_time: DateTime.now - 5.minutes)
    jobrun2 = create(:failed_job_run, job: job1, start_time: DateTime.now - 8.minutes, end_time: DateTime.now - 3.minutes)
    jobrun3 = create(:successful_job_run, job: job2, start_time: DateTime.now - 40.minutes, end_time: DateTime.now - 30.minutes)
    jobrun4 = create(:successful_job_run, job: job2, start_time: DateTime.now - 20.minutes, end_time: DateTime.now - 1.minute)

    perform_enqueued_jobs do
      StatsPerDayJob.perform_later

      js = JobStat.all
      expect(js.length).to eq(2)

      expect(js[0].runs).to eq(2)
      expect(js[0].failed).to eq(1)
      expect(js[0].start_dt).to eq(Time.zone.local(2020, 5, 2, 0, 00, 00))
      expect(js[0].end_dt).to eq(Time.zone.local(2020, 5, 2, 23, 59, 59))
      expect(js[0].avg_runtime).to eq(300)
      expect(js[0].min_runtime).to eq(300)
      expect(js[0].max_runtime).to eq(300)
      expect(js[0].user).to eq(admin1)
      expect(js[0].period).to eq('day')

      expect(js[1].runs).to eq(2)
      expect(js[1].failed).to eq(0)
      expect(js[1].start_dt).to eq(Time.zone.local(2020, 5, 2, 0, 00, 00))
      expect(js[1].end_dt).to eq(Time.zone.local(2020, 5, 2, 23, 59, 59))
      expect(js[1].avg_runtime).to eq(870)
      expect(js[1].min_runtime).to eq(600)
      expect(js[1].max_runtime).to eq(1140)
      expect(js[1].user).to eq(admin2)
      expect(js[1].period).to eq('day')
    end

    travel_back
  end
end
