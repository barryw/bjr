# frozen_string_literal: true

require 'rails_helper'

RSpec.describe JobRun, type: :model do
  it 'Will try to POST to the success callback when the run is successful' do
    user = create(:admin1)
    job = create(:job1, user: user, success_callback: 'http://localhost:3000/success')
    job_run = create(:successful_job_run, job: job, start_time: DateTime.now)

    expect(HTTParty).to receive(:post).with('http://localhost:3000/success',
                                            {body: {job_id: job.id, return_code: 0, stderr: nil, stdout: 'Success', success: true,
                                              error_message: nil, start_time: anything, end_time: anything}})

    job_run.update_run(0, true, nil, 'Success', nil)
  end

  it 'Will try to POST to the failure callback when the run fails' do
    user = create(:admin1)
    job = create(:job1, user: user, failure_callback: 'http://localhost:3000/failed')
    job_run = create(:failed_job_run, job: job, start_time: DateTime.now)

    expect(HTTParty).to receive(:post).with('http://localhost:3000/failed',
                                            {body: {job_id: job.id, return_code: 0, stdout: nil, stderr: 'Failed', success: true,
                                              error_message: nil, start_time: anything, end_time: anything}})

    job_run.update_run(0, true, nil, nil, 'Failed')
  end

  it 'Will log a message if the POST to the callbacks fail' do
    user = create(:admin1)
    job = create(:job1, user: user, failure_callback: 'http://localhost:3000/failed')
    job_run = create(:failed_job_run, job: job, start_time: DateTime.now)

    expect(HTTParty).to receive(:post).with('http://localhost:3000/failed',
                                            {body: {job_id: job.id, return_code: 0, stdout: nil, stderr: 'Failed', success: true,
                                              error_message: nil, start_time: anything, end_time: anything}}).and_raise('Boom goes the dynamite')
    expect(Rails.logger).to receive(:warn).with("Failed to call callback hook http://localhost:3000/failed: Boom goes the dynamite")

    job_run.update_run(0, true, nil, nil, 'Failed')
  end
end
