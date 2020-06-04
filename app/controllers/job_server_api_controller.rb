# frozen_string_literal: true

require 'sidekiq/api'
require 'trends'

#
# Handles requests for information about the job servers themselves
#
class JobServerApiController < ApplicationController
  include ApplicationHelper
  include SidekiqHelper

  before_action :require_root, only: %i[quiesce_worker busy_thread_count]
  before_action :require_host, only: %i[quiesce_worker]
  before_action :date_range, only: %i[minutely_job_stats hourly_job_stats]
  before_action :count, only: %i[recent_jobs upcoming_jobs]

  #
  # Prepare the workers to be upgraded
  #
  def quiesce_worker
    quiesce(params[:host])
    message I18n.t('jobserver.messages.workers.quiesced'), :ok, false, {}, ''
  end

  #
  # Return the number of busy threads across workers
  #
  def busy_thread_count
    message I18n.t('jobserver.messages.workers.received'), :ok, false, workers, 'workers'
  end

  #
  # Return minutely stats
  #
  def minutely_job_stats
    stats = paginate JobStat.mine(current_user).where(period: :minute, start_dt: (@start_date || DateTime.now - 1.hour)..(@end_date || DateTime.now)).order(created_at: :asc)
    message I18n.t('jobserver.messages.minutely_job_stats.received'), :ok, false, stats, 'jobstats'
  end

  #
  # Return hourly stats
  #
  def hourly_job_stats
    stats = paginate JobStat.mine(current_user).where(period: :hour, start_dt: (@start_date || DateTime.now - 24.hours)..(@end_date || DateTime.now)).order(created_at: :asc)
    message I18n.t('jobserver.messages.hourly_job_stats.received'), :ok, false, stats, 'jobstats'
  end

  #
  # Return daily stats
  #
  def daily_job_stats
    stats = paginate JobStat.mine(current_user).where(period: :day, start_dt: (@start_date || DateTime.now - 7.days)..(@end_date || DateTime.now)).order(created_at: :asc)
    message I18n.t('jobserver.messages.daily_job_stats.received'), :ok, false, stats, 'jobstats'
  end

  #
  # Return weekly stats
  #
  def weekly_job_stats
    stats = paginate JobStat.mine(current_user).where(period: :week, start_dt: (@start_date || DateTime.now - 4.weeks)..(@end_date || DateTime.now)).order(created_at: :asc)
    message I18n.t('jobserver.messages.weekly_job_stats.received'), :ok, false, stats, 'jobstats'
  end

  #
  # Return a list of the most recently run jobs
  #
  def recent_jobs
    jobs = Job.recent(current_user, @count)
    message I18n.t('jobserver.messages.recent_jobs.received'), :ok, false, jobs, 'jobs'
  end

  #
  # Return a list of upcoming jobs
  #
  def upcoming_jobs
    jobs = Job.upcoming(current_user, @count)
    message I18n.t('jobserver.messages.upcoming_jobs.received'), :ok, false, jobs, 'jobs'
  end

  #
  # Return high-level stats for today
  #
  def todays_stats
    stats = JobStat.todays_stats(current_user)
    message I18n.t('jobserver.messages.todays_stats.received'), :ok, false, stats, 'todaysstats'
  end

  private

  #
  # Make sure the host parameter is specified for quiescing or stopping worker hosts
  #
  def require_host
    error I18n.t('jobserver.messages.workers.host_required'), :bad_request and return if params[:host].blank?
  end

  def date_range
    @start_date = date_parse(params[:start_date])
    @end_date = date_parse(params[:end_date])
  end

  def count
    @count = params[:count].nil? ? 10 : params[:count].to_i
    message(I18n.t('jobserver.messages.upcoming_jobs.failed'), :not_acceptable, true, [], 'jobs') && return if @count > 20
  end
end
