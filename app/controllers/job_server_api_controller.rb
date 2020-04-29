# frozen_string_literal: true
require 'sidekiq/api'

#
# Handles requests for information about the job servers themselves
#
class JobServerApiController < ApplicationController

  #
  # Return a list of the jobs that are failing the most
  #
  def most_failed_jobs
    count = params[:count].nil? ? 10 : params[:count].to_i

    message I18n.t('jobserver.messages.most_failed_jobs.failed'), :not_acceptable, true, [], 'jobs' and return if count > 20
  end

  #
  # Return a list of the jobs that are running the longest
  #
  def longest_running_jobs
  end

  #
  # Return job run statistics for the last 24 hours by hour
  #
  def daily_job_stats
  end

  #
  # Return job run statistics for the week by day
  #
  def weekly_job_stats
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
