require 'rails_helper'

RSpec.describe Job, type: :model do
  it "Does the right thing when a job starts" do
    admin = create(:admin1)
    job = create(:job1, user: admin)
    run = job.start_job
    expect(run).not_to be_nil
    expect(run.job_id).to eq(job.id)
    expect(job.running).to be true
  end

  it "Does the right thing when a job finishes" do
    admin = create(:admin1)
    job = create(:job1, user: admin)
    run = create(:job_run, job: job, start_time: Time.current)
    job.stop_job(run, 0, true, "error message", "stdout", "stderr")
    expect(job.running).to be false
    expect(job.success).to be true
    expect(job.last_run).not_to be_nil
    expect(run.return_code).to eq(0)
    expect(run.success).to be true
    expect(run.error_message).to eq("error message")
    expect(run.stdout).to eq("stdout")
    expect(run.stderr).to eq("stderr")
  end
end
