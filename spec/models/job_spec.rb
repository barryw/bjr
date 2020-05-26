# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Job, type: :model do
  it 'does the right thing when a job starts from a schedule' do
    admin = create(:admin1)
    job = create(:job1, user: admin)
    run = job.start_job(false)

    expect(run).not_to be_nil
    expect(run.job_id).to eq(job.id)
    expect(run.is_manual).to be false
    expect(job.running).to be true
  end

  it 'does the right thing when a job is started manually' do
    admin = create(:admin1)
    job = create(:job1, user: admin)
    run = job.start_job(true)

    expect(run).not_to be_nil
    expect(run.job_id).to eq(job.id)
    expect(run.is_manual).to be true
    expect(job.running).to be true
  end

  it 'does the right thing when a job finishes' do
    admin = create(:admin1)
    job = create(:job1, user: admin)
    run = create(:successful_job_run, job: job, start_time: Time.current)
    job.stop_job(run, 0, true, 'error message', 'stdout', 'stderr')

    expect(job.running).to be false
    expect(job.success).to be true
    expect(job.last_run).not_to be_nil
    expect(run.return_code).to eq(0)
    expect(run.success).to be true
    expect(run.error_message).to eq('error message')
    expect(run.stdout).to eq('stdout')
    expect(run.stderr).to eq('stderr')
  end

  it 'gracefully handles an error when marking a job as complete' do
    admin = create(:admin1)
    job = create(:job1, user: admin)
    run = create(:successful_job_run, job: job, start_time: Time.current)
    expect(run).to receive(:update_run).with(0, true, 'error message', 'stdout', 'stderr').and_raise(StandardError)
    job.stop_job(run, 0, true, 'error message', 'stdout', 'stderr')
    expect(job.success).to be false
    expect(job.running).to be false
    expect(job.last_run).not_to be nil
  end

  it 'returns a list of upcoming jobs but excludes disabled jobs' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin, cron: "* * * * *")
    job2 = create(:job2, name: 'job 2', user: admin, cron: "*/5 * * * *")

    jobs = Job.upcoming(admin.id, 2)
    expect(jobs.count).to eq(1)
    expect(jobs[0].id).to eq(job1.id)
  end

  it 'returns a list of upcoming jobs but excludes running jobs' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin, cron: '* * * * *')
    job2 = create(:job2, name: 'job 2', user: admin, cron: '*/5 * * * *', enabled: true)
    job3 = create(:job1, name: 'job 3', user: admin, cron: '*/10 * * * *', running: true)

    jobs = Job.upcoming(admin.id, 2)
    expect(jobs.count).to eq(2)
    expect(jobs[0].id).to eq(job1.id)
    expect(jobs[1].id).to eq(job2.id)
  end

  it 'returns a list of recent jobs' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin, last_run: DateTime.now - 1.minute)
    job2 = create(:job2, name: 'job 2', user: admin, last_run: DateTime.now - 2.minute)

    jobs = Job.recent(admin.id, 2)
    expect(jobs.count).to eq(2)
    expect(jobs[0].id).to eq(job1.id)
    expect(jobs[1].id).to eq(job2.id)
  end
end
