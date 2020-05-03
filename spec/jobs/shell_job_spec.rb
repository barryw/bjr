# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ShellJob, type: :job do
  include ActiveJob::TestHelper

  it 'properly handles a non-existing job' do
    perform_enqueued_jobs do
      expect(Job).to receive(:find).with(1).and_raise(StandardError)
      ShellJob.perform_later(1)
    end
  end

  it 'properly handles an exception from Open3' do
    perform_enqueued_jobs do
      user = create(:admin1)
      job = create(:job1, user: user)
      expect(Job).to receive(:find).and_return(job)
      expect(Open3).to receive(:capture3).and_raise(StandardError)
      expect(job).to receive(:stop_job)
      ShellJob.perform_later(1)
    end
  end
end
