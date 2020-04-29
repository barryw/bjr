# frozen_string_literal: true
require 'sidekiq/api'

#
# Handles requests for information about the job servers themselves
#
class JobServerApiController < ApplicationController

  #
  # Return a structure showing the number of jobs processed and failed by day
  #
  def job_runs_per_day
    days = params[:days].nil? ? 7 : params[:days].to_i

    message I18n.t('jobserver.messages.server_runs.failed'), :not_acceptable, true, [], 'jobs_per_day' and return if days > 30

    s = Sidekiq::Stats::History.new(days)
    response = []
    processed = s.processed.sort_by { |k, v| k }
    failed = s.failed.sort_by { |k, v| k }

    (0..processed.length - 1).each do |i|
      response << { 'date': processed[i][0], 'processed': processed[i][1], 'failed': failed[i][1] }
    end

    message I18n.t('jobserver.messages.server_runs.received'), :ok, false, response, 'jobs_per_day'
  end

  #
  # Return a list of the most recently run jobs
  #
  def most_recent_jobs
    count = params[:count].nil? ? 10 : params[:count].to_i

    message I18n.t('jobserver.messages.recent_jobs.failed'), :not_acceptable, true, [], 'jobs' and return if count > 20

    jobs = Job.joins(:job_runs).where(user_id: current_user).order('job_runs.created_at desc').limit(count)

    message I18n.t('jobserver.messages.recent_jobs.received'), :ok, false, jobs, 'jobs'
  end
end
