TAG_SEARCH = ['any', 'all', 'exclude']

class JobApiController < ApplicationController
  before_action :get_job, only: [:show, :update, :destroy, :failures, :runs, :occurrences, :disable, :enable]

  def index
    params.permit(:tags).permit(:incexc)
    jobs = search_tags(Job.all.mine(current_user))

    paginate json: jobs
  end

  def show
    render json: @job
  end

  def create
    job = Job.create!(name: params[:name], cron: params[:cron], command: params[:command], timezone: params[:timezone], user: current_user)
    add_tags(job)
    job.save
    render json: job, status: :created
  rescue ActiveRecord::RecordNotUnique
    not_unique
  end

  def update
    @job.name = params[:name] unless @job.name == params[:name] or params[:name].blank?
    @job.cron = params[:cron] unless @job.cron == params[:cron] or params["cron"].blank?
    @job.command = params[:command] unless @job.command == params[:command] or params[:command].blank?
    @job.timezone = params[:timezone] unless @job.timezone == params[:timezone] or params[:timezone].blank?
    @job.enabled = params[:enabled] unless @job.enabled == params[:enabled] or params[:enabled].blank?
    add_tags(@job)
    @job.save
    render json: @job
  rescue ActiveRecord::RecordNotUnique
    not_unique
  end

  def destroy
    @job.destroy
    head :no_content
  end

  def runs
    runs = @job.job_runs
    render json: runs
  end

  # Search for failures across all jobs
  def failures
  end

  # Search for failed runs of a single job
  def job_failures
  end

  # Find disabled jobs
  def disabled
    render json: enabled_disabled_jobs(false)
  end

  # Disable a job
  def disable
    enable_disable_job(false)
  end

  # Find enabled jobs
  def enabled
    render json: enabled_disabled_jobs(true)
  end

  # Enable a job
  def enable
    enable_disable_job(true)
  end

  def occurrences
    error I18n.t('jobs.errors.end_date_required'), :forbidden and return unless params[:end_date]
    render json: @job.occurrences(params[:end_date])
  end

  private

  def add_tags(job)
    if params.has_key? :tags
      job.tag_list = params[:tags]
    end
  end

  def search_tags(jobs)
    if params.has_key? :tags
      tags = params[:tags].split(',')
      incexc = (params.has_key?(:incexc) and TAG_SEARCH.include?(params[:incexc])) ? params[:incexc].downcase : 'all'
      case incexc
      when 'all'
        jobs = jobs.tagged_with(tags, match_all: true)
      when 'any'
        jobs = jobs.tagged_with(tags, any: true)
      when 'exclude'
        jobs = jobs.tagged_with(tags, exclude: true)
      end
    end

    jobs
  end

  def enabled_disabled_jobs(enabled)
    Job.all.mine(current_user).enabled(enabled)
  end

  def enable_disable_job(enabled)
    @job.enabled = enabled
    @job.save

    head :no_content
  end

  def get_job
    @job = Job.where(id: params[:id]).mine(current_user).first
    error I18n.t('jobs.errors.not_found'), :not_found and return if @job.blank?
  end

  def not_unique
    error I18n.t('jobs.errors.already_exists'), :forbidden
  end
end
