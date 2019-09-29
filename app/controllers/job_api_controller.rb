class JobApiController < ApplicationController
  before_action :get_job, only: [:show, :update, :destroy, :failures, :runs, :occurrences, :runs]

  def index
    jobs = Job.find_jobs(current_user, params[:start_date], params[:end_date],
                         params[:tags], params[:incexc], params[:enabled],
                         params[:succeeded], params[:running])

    paginate json: jobs
  end

  def show
    render json: @job
  end

  def create
    job = Job.create!(name: params[:name], cron: params[:cron], command: params[:command],
                      timezone: params[:timezone], user: current_user)
    current_user.tag job, with: params[:tags], on: :tags if params[:tags].present?
    message I18n.t('jobs.messages.created', id: job.id), :created, false, job, 'job'
  rescue ActiveRecord::RecordNotUnique
    not_unique
  rescue TZInfo::InvalidTimezoneIdentifier
    error I18n.t('common.errors.invalid_timezone', timezone: params[:timezone],
                 timezone_list_url: static_api_timezones_url), :forbidden
  end

  def update
    @job.name = params[:name] unless @job.name == params[:name] or params[:name].blank?
    @job.cron = params[:cron] unless @job.cron == params[:cron] or params[:cron].blank?
    @job.command = params[:command] unless @job.command == params[:command] or params[:command].blank?
    @job.timezone = params[:timezone] unless @job.timezone == params[:timezone] or params[:timezone].blank?
    @job.enabled = params[:enabled] if params[:enabled].present?
    current_user.tag @job, with: params[:tags], on: :tags if params[:tags].present?
    @job.save!
    message I18n.t('jobs.messages.updated', id: @job.id), :ok, false, @job, 'job'
  rescue ActiveRecord::RecordNotUnique
    not_unique
  rescue
    error I18n.t('jobs.errors.update_failed', id: @job.id, error: $!), :forbidden
  end

  def destroy
    @job.destroy
    message I18n.t('jobs.messages.deleted', id: @job.id), :ok
  end

  # Return the runs for a job
  def runs
    start_date = params[:start_date]
    end_date = params[:end_date]
    succeeded = params[:succeeded]

    runs = @job.filter_runs(start_date, end_date, succeeded)
    paginate json: runs
  end

  # Return the occurrences for this job up to a certain date
  def occurrences
    end_date = Chronic.parse(params[:end_date])
    no_end_date and return if end_date.nil?
    render json: @job.occurrences(end_date)
  end

  private

  def get_job
    @job = Job.mine(current_user).where(id: params[:id]).first
    error I18n.t('jobs.errors.not_found'), :not_found and return if @job.blank?
  end

  def not_unique
    error I18n.t('jobs.errors.already_exists'), :forbidden
  end

  def no_end_date
    error I18n.t('jobs.errors.end_date_required'), :forbidden
  end
end
