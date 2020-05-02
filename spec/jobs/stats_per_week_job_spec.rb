# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StatsPerWeekJob, type: :job do
  include ActiveJob::TestHelper

  it 'computes weekly stats for jobs that ran' do
    perform_enqueued_jobs do
      StatsPerWeekJob.perform_later
    end
  end
end
