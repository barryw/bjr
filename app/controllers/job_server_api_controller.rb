# frozen_string_literal: true
require 'sidekiq/api'

#
# Handles requests for information about the job servers themselves
#
class JobServerApiController < ApplicationController

  #
  # Return minutely stats
  #
  def minutely_job_stats
    count = params[:count].nil? ? 60 : params[:count].to_i
    message I18n.t('jobserver.messages.minutely_job_stats.failed'), :not_acceptable, true, [], 'jobstats' and return if count > 60
    stats = JobStat.mine(current_user).where(period: :minute).order(created_at: :asc).limit(count)
    message I18n.t('jobserver.messages.minutely_job_stats.received'), :ok, false, stats, 'jobstats'
  end

  #
  # Return job run statistics for the last 24 hours by hour
  #
  def hourly_job_stats
    stats = JobStat.mine(current_user).where(period: :hour).order(created_at: :asc).limit(24)
    message I18n.t('jobserver.messages.hourly_job_stats.received'), :ok, false, stats, 'jobstats'
  end

  #
  # Return a list of the most recently run jobs
  #
  def recent_jobs
    count = params[:count].nil? ? 10 : params[:count].to_i
    message I18n.t('jobserver.messages.recent_jobs.failed'), :not_acceptable, true, [], 'jobs' and return if count > 20
    jobs = Job.recent(current_user, count)
    message I18n.t('jobserver.messages.recent_jobs.received'), :ok, false, jobs, 'jobs'
  end

  #
  # Return a list of upcoming jobs
  #
  def upcoming_jobs
    count = params[:count].nil? ? 10 : params[:count].to_i
    message I18n.t('jobserver.messages.upcoming_jobs.failed'), :not_acceptable, true, [], 'jobs' and return if count > 20
    jobs = Job.upcoming(current_user, count)
    message I18n.t('jobserver.messages.upcoming_jobs.received'), :ok, false, jobs, 'jobs'
  end

end
