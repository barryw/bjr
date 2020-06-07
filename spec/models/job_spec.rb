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

  it 'returns a validation error on a bad cron string' do
    admin = create(:admin1)
    job = build(:job1, name: 'bad cron', user: admin, cron: 'bad cron')
    expect(job).to_not be_valid
    expect(job.errors[:cron]).to eq ["'bad cron' is an invalid cron expression."]
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

  it 'can search for jobs using an expression for &tags #1' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin)
    job2 = create(:job2, name: 'job 2', user: admin)
    job3 = create(:job2, name: 'job 3', user: admin)

    job1.tag('tag1,tag3')
    job2.tag('tag1,tag2,tag3')
    job3.tag('tag4')

    jobs = Job.search_jobs(admin, 'tag:&tag1,tag3')
    expect(jobs.length).to eq(1)
    expect(jobs[0].id).to eq(job1.id)
  end

  it 'can search for jobs using an expression for &tags #2' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin)
    job2 = create(:job2, name: 'job 2', user: admin)
    job3 = create(:job2, name: 'job 3', user: admin)

    job1.tag('tag1,tag3')
    job2.tag('tag1,tag3')
    job3.tag('tag4')

    jobs = Job.search_jobs(admin, 'tag:&tag1,tag3')
    expect(jobs.length).to eq(2)
    expect(jobs[0].id).to eq(job1.id)
    expect(jobs[1].id).to eq(job2.id)
  end

  it 'can search for jobs using an expression for !tags #1' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin)
    job2 = create(:job2, name: 'job 2', user: admin)
    job3 = create(:job2, name: 'job 3', user: admin)

    job1.tag('tag1,tag3,tag5')
    job2.tag('tag1,tag2,tag3')
    job3.tag('tag4')

    jobs = Job.search_jobs(admin, 'tag:!tag1,tag3')
    expect(jobs.length).to eq(1)
    expect(jobs[0].id).to eq(job3.id)
  end

  it 'can search for jobs using an expression for !tags #2' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin)
    job2 = create(:job2, name: 'job 2', user: admin)
    job3 = create(:job2, name: 'job 3', user: admin)

    job1.tag('tag1,tag3,tag5')
    job2.tag('tag1,tag2,tag3')
    job3.tag('tag4')

    jobs = Job.search_jobs(admin, 'tag:!tag4,tag5')
    expect(jobs.length).to eq(1)
    expect(jobs[0].id).to eq(job2.id)
  end

  it 'can search for jobs using an expression for |tags #1' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin)
    job2 = create(:job2, name: 'job 2', user: admin)
    job3 = create(:job2, name: 'job 3', user: admin)

    job1.tag('tag1,tag3,tag5')
    job2.tag('tag1,tag2,tag3')
    job3.tag('tag4')

    jobs = Job.search_jobs(admin, 'tag:|tag1,tag3')
    expect(jobs.length).to eq(2)
    expect(jobs[0].id).to eq(job1.id)
    expect(jobs[1].id).to eq(job2.id)
  end

  it 'can search for jobs using an expression for |tags #2' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin)
    job2 = create(:job2, name: 'job 2', user: admin)
    job3 = create(:job2, name: 'job 3', user: admin)

    job1.tag('tag1,tag3,tag5')
    job2.tag('tag1,tag2,tag3')
    job3.tag('tag4')

    jobs = Job.search_jobs(admin, 'tag:|tag1,tag3,tag4,tag5')
    expect(jobs.length).to eq(3)
    expect(jobs[0].id).to eq(job1.id)
    expect(jobs[1].id).to eq(job2.id)
    expect(jobs[2].id).to eq(job3.id)
  end

  it 'can search for jobs using an expression for tags (defaults to any)' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin)
    job2 = create(:job2, name: 'job 2', user: admin)
    job3 = create(:job2, name: 'job 3', user: admin)

    job1.tag('tag1,tag3,tag5')
    job2.tag('tag1,tag2,tag3')
    job3.tag('tag4')

    jobs = Job.search_jobs(admin, 'tag:tag1,tag3,tag4,tag5')
    expect(jobs.length).to eq(3)
    expect(jobs[0].id).to eq(job1.id)
    expect(jobs[1].id).to eq(job2.id)
    expect(jobs[2].id).to eq(job3.id)
  end

  it 'can search for jobs using an expression for name' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin)
    job2 = create(:job2, name: 'job 2', user: admin)
    job3 = create(:job2, name: 'job 3', user: admin)

    jobs = Job.search_jobs(admin, 'name:job')
    expect(jobs.length).to eq(3)
    expect(jobs[0].id).to eq(job1.id)
    expect(jobs[1].id).to eq(job2.id)
    expect(jobs[2].id).to eq(job3.id)
  end

  it 'can search for jobs using an expression for name and running' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin, running: true)
    job2 = create(:job2, name: 'job 2', user: admin, running: false)
    job3 = create(:job2, name: 'job 3', user: admin, running: true)

    jobs = Job.search_jobs(admin, 'name:job running')
    expect(jobs.length).to eq(2)
    expect(jobs[0].id).to eq(job1.id)
    expect(jobs[1].id).to eq(job3.id)
  end

  it 'can search for jobs using an expression for name and stopped' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin, running: true)
    job2 = create(:job2, name: 'job 2', user: admin, running: false)
    job3 = create(:job2, name: 'job 3', user: admin, running: true)

    jobs = Job.search_jobs(admin, 'name:job stopped')
    expect(jobs.length).to eq(1)
    expect(jobs[0].id).to eq(job2.id)
  end

  it 'can search for jobs that are failing' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin, success: true)
    job2 = create(:job2, name: 'job 2', user: admin, success: false)
    job3 = create(:job2, name: 'job 3', user: admin, success: false)

    jobs = Job.search_jobs(admin, 'name:job failed')
    expect(jobs.length).to eq(2)
    expect(jobs[0].id).to eq(job2.id)
    expect(jobs[1].id).to eq(job3.id)
  end

  it 'can search for jobs that are succeeding' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin, success: true)
    job2 = create(:job2, name: 'job 2', user: admin, success: false)
    job3 = create(:job2, name: 'job 3', user: admin, success: false)

    jobs = Job.search_jobs(admin, 'name:job success')
    expect(jobs.length).to eq(1)
    expect(jobs[0].id).to eq(job1.id)
  end

  it 'can search for jobs that are enabled' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin, enabled: true)
    job2 = create(:job2, name: 'job 2', user: admin, enabled: false)
    job3 = create(:job2, name: 'job 3', user: admin, enabled: true)

    jobs = Job.search_jobs(admin, 'name:job enabled')
    expect(jobs.length).to eq(2)
    expect(jobs[0].id).to eq(job1.id)
    expect(jobs[1].id).to eq(job3.id)
  end

  it 'can search for jobs that are disabled' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin, enabled: true)
    job2 = create(:job2, name: 'job 2', user: admin, enabled: false)
    job3 = create(:job2, name: 'job 3', user: admin, enabled: true)

    jobs = Job.search_jobs(admin, 'name:job disabled')
    expect(jobs.length).to eq(1)
    expect(jobs[0].id).to eq(job2.id)
  end

  it 'can search for jobs by their command' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin, command: 'sleep 10')
    job2 = create(:job2, name: 'job 2', user: admin, command: 'ps ax')
    job3 = create(:job2, name: 'job 3', user: admin, command: 'curl http://www.blah.com')

    jobs = Job.search_jobs(admin, 'cmd:sleep')
    expect(jobs.length).to eq(1)
    expect(jobs[0].id).to eq(job1.id)
  end

  it 'computes correct run and lag stats' do
    admin = create(:admin1)
    job1 = create(:job1, name: 'job 1', user: admin, command: 'sleep 10')
    run1 = create(:successful_job_run, job: job1, start_time: DateTime.now - 60.minutes, end_time: DateTime.now - 59.minutes, scheduled_start_time: DateTime.now - 61.minutes, schedule_diff_in_seconds: 60)
    run2 = create(:successful_job_run, job: job1, start_time: DateTime.now - 59.minutes, end_time: DateTime.now - 57.minutes, scheduled_start_time: DateTime.now - 59.minutes, schedule_diff_in_seconds: 0)
    run3 = create(:successful_job_run, job: job1, start_time: DateTime.now - 20.minutes, end_time: DateTime.now - 12.minutes, is_manual: true)
    run4 = create(:successful_job_run, job: job1, start_time: DateTime.now - 58.minutes, end_time: DateTime.now - 55.minutes, scheduled_start_time: DateTime.now - 59.minutes, schedule_diff_in_seconds: 62)

    job1.compute_run_stats
    job1.reload

    expect(job1.avg_run_duration).to be_within(0.0001).of(210.0)
    expect(job1.max_run_duration).to be_within(0.0001).of(480.0)
    expect(job1.min_run_duration).to be_within(0.0001).of(60.0)
    expect(job1.avg_run_duration_trend).to be_within(0.0001).of(132.0)
    expect(job1.avg_run_lag).to be_within(0.0001).of(40.6667)
    expect(job1.max_run_lag).to be_within(0.0001).of(62.0)
    expect(job1.min_run_lag).to be_within(0.0001).of(0)
    expect(job1.avg_run_lag_trend).to be_within(0.0001).of(1.0)
  end
end
