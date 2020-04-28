# frozen_string_literal: true
require 'sidekiq/api'

#
# Handles requests for information about the job servers themselves
#
class JobServerApiController < ApplicationController

  def job_runs_per_day
    days = params[:days].nil? ? 7 : params[:days].to_i

    message I18n.t('jobserver.messages.failed'), :not_acceptable, true, [], 'jobs_per_day' and return if days > 30

    s = Sidekiq::Stats::History.new(days)
    response = []
    processed = s.processed.sort_by { |k, v| k }
    failed = s.failed.sort_by { |k, v| k }

    (0..processed.length - 1).each do |i|
      response << { 'date': processed[i][0], 'processed': processed[i][1], 'failed': failed[i][1] }
    end

    message I18n.t('jobserver.messages.received'), :ok, false, response, 'jobs_per_day'
  end
end
