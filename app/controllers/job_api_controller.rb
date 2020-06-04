# frozen_string_literal: true

#
# Handles calls to the /job_api routes
#
class JobApiController < ApplicationController
  include ApplicationHelper
  before_action :job, only: %i[show update destroy failures runs occurrences runs run_now]

  #
  # Get a collection of paginated jobs. An expression can be passed along to search for jobs. Expression can look like:
  #
  # 'name:my_job' - search for jobs named like 'my_job'
  # 'tags:&tag1,tag2' - search for jobs tagged with both tag1 and tag2
  # 'tags:!tag1' - search for jobs without tag tag1
  # 'running' - search for running jobs
  # 'stopped' - search for stopped jobs
  # 'enabled' - search for enabled jobs
  # 'disabled' - search for disabled jobs
  #
  def index
    jobs = paginate Job.search_jobs(current_user, params[:expression])
    message I18n.t('jobs.messages.received'), :ok, false, jobs, 'jobarray'
  end

  #
  # Get a single job
  #
  def show
    message I18n.t('jobs.messages.received'), :ok, false, @job, 'job'
  end

  #
  # Create a new job. Name must be unique
  #
  def create
    ActiveRecord::Base.transaction do
      job = Job.create!(name: params[:name], cron: params[:cron], command: params[:command],
                        timezone: params[:timezone], user: current_user, success_callback: params[:success_callback],
                        failure_callback: params[:failure_callback])
      job.tag(params[:tags])
      message I18n.t('jobs.messages.created', id: job.id), :created, false, job, 'job'
    end
  rescue ActiveRecord::RecordInvalid => re
    error re.record.errors.full_messages.join(' '), :unprocessable_entity
  rescue TZInfo::InvalidTimezoneIdentifier
    error I18n.t('common.errors.invalid_timezone', timezone: params[:timezone],
                                                   timezone_list_url: static_api_timezones_url), :forbidden
  rescue StandardError
    logger.error "Failed to create Job #{params[:name]}: #{$!}"
    error I18n.t('jobs.errors.create_failed', error: $!), :conflict
  end

  #
  # Update an existing job
  #
  def update
    @job.name = params[:name] unless (@job.name == params[:name]) || params[:name].blank?
    @job.cron = params[:cron] unless (@job.cron == params[:cron]) || params[:cron].blank?
    @job.command = params[:command] unless (@job.command == params[:command]) || params[:command].blank?
    @job.timezone = params[:timezone] unless (@job.timezone == params[:timezone]) || params[:timezone].blank?
    @job.enabled = to_bool(params[:enabled]) if params[:enabled].present?
    @job.success_callback = params[:success_callback] if params[:success_callback].present?
    @job.failure_callback = params[:failure_callback] if params[:failure_callback].present?
    ActiveRecord::Base.transaction do
      @job.tag(params[:tags])
      @job.save!
    end
    message I18n.t('jobs.messages.updated', id: @job.id), :ok, false, @job, 'job'
  rescue ActiveRecord::RecordInvalid => re
    error re.record.errors.full_messages.join(' '), :unprocessable_entity
  rescue StandardError
    logger.error "Failed to update Job #{@job.id}: #{$!}"
    error I18n.t('jobs.errors.update_failed', id: @job.id, error: $!), :conflict
  end

  #
  # Destroy a single job
  #
  def destroy
    error I18n.t('jobs.errors.cant_delete_running', id: @job.id), :conflict and return if @job.running?
    @job.destroy
    message I18n.t('jobs.messages.deleted', id: @job.id), :ok
  end

  #
  # Queue the job to run now unless it's already running
  #
  def run_now
    error I18n.t('jobs.errors.already_running', id: @job.id), :conflict and return if @job.running?
    ShellJob.perform_later(@job.id, true)
    message I18n.t('jobs.messages.started', id: @job.id), :ok
  end

  #
  # Return the runs for a job
  #
  def runs
    runs = paginate @job.filter_runs(params[:start_date], params[:end_date], params[:succeeded]).page params[:page]
    message I18n.t('jobruns.messages.received'), :ok, false, runs, 'jobruns'
  end

  #
  # Return the occurrences for this job up to a certain date
  #
  def occurrences
    end_date = Chronic.parse(params[:end_date])
    no_end_date && return if end_date.nil?

    occurrences = paginate @job.occurrences(end_date)
    message I18n.t('occurrences.messages.received'), :ok, false, occurrences, 'occurrences'
  end

  private

  def job
    @job = Job.mine(current_user).where(id: params[:id]).first
    error(I18n.t('jobs.errors.not_found'), :not_found) && return if @job.blank?
  end

  def no_end_date
    error I18n.t('jobs.errors.end_date_required'), :forbidden
  end
end
