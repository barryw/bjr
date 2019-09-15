class JobApiController < ApplicationController
  before_action :get_job, only: [:show, :update, :destroy, :failures, :runs]

  def index
    jobs = Job.all.where(user: current_user)
    render json: jobs
  end

  def show
    render json: @job
  end

  def create
    job = Job.create!(name: params[:name], cron: params[:cron], command: params[:command], timezone: params[:timezone], user: current_user)
    render json: job, status: :created
  rescue ActiveRecord::RecordNotUnique
    render json: { error: 'A job with this name already exists' }, status: 403
  end

  def update
    @job.name = params[:name] unless @job.name == params[:name] or params[:name].blank?
    @job.cron = params[:cron] unless @job.cron == params[:cron] or params["cron"].blank?
    @job.command = params[:command] unless @job.command == params[:command] or params[:command].blank?
    @job.timezone = params[:timezone] unless @job.timezone == params[:timezone] or params[:timezone].blank?
    @job.disabled = params[:disabled] unless @job.disabled == params[:disabled] or params[:disabled].blank?

    @job.save
    render json: @job
  end

  def destroy
    @job.destroy
    head :no_content
  end

  def runs
    runs = @job.job_runs
    render json: runs
  end

  def failures
  end

  def disabled
    jobs = Job.all.mine(current_user).disabled(true)
    render json: jobs
  end

  def enabled
    jobs = Job.all.mine(current_user).disabled(true)
    render json: jobs
  end

  private

  def get_job
    @job = Job.where(id: params[:id]).mine(current_user).first
    render json: { error: 'Job not found' }, status: :not_found and return if @job.blank?
  end
end
