# frozen_string_literal: true

#
# Handles calls to the /folder_api routes
#
class FolderApiController < ApplicationController
  include ApplicationHelper
  before_action :folder, only: %i[show update destroy jobs]

  #
  # Paginate all folders for a user
  #
  def index
    folders = paginate Folder.mine(current_user)
    message I18n.t('folders.messages.received'), :ok, false, folders, 'folderarray'
  end

  #
  # Paginate all jobs in a folder. The job list is built dynamically based on the folder's expression.
  #
  def jobs
    jobs = paginate @folder.jobs
    message I18n.t('jobs.messages.received'), :ok, false, jobs, 'jobarray'
  end

  #
  # Show a single folder
  #
  def show
    message I18n.t('folders.messages.received'), :ok, false, @folder, 'folder'
  end

  #
  # Create a new folder
  #
  def create
    ActiveRecord::Base.transaction do
      folder = Folder.create!(name: params[:name], expression: params[:expression], user: current_user)
      message I18n.t('folders.messages.created', id: folder.id), :created, false, folder, 'folder'
    end
  rescue ActiveRecord::RecordInvalid => e
    error e.record.errors.full_messages.join(' '), :unprocessable_entity
  rescue StandardError
    logger.error "Failed to create Folder #{params[:name]}: #{$!}"
    error I18n.t('folders.errors.create_failed', error: $!), :conflict
  end

  #
  # Update an existing folder
  #
  def update
    @folder.name = params[:name] unless (@folder.name == params[:name]) || params[:name].blank?
    @folder.expression = params[:expression] unless (@folder.expression == params[:expression]) || params[:expression].blank?

    ActiveRecord::Base.transaction do
      @folder.save!
    end
    message I18n.t('folders.messages.updated', id: @folder.id), :ok, false, @folder, 'folder'
  rescue ActiveRecord::RecordInvalid => e
    error e.record.errors.full_messages.join(' '), :unprocessable_entity
  rescue StandardError
    logger.error "Failed to update Job #{@folder.id}: #{$!}"
    error I18n.t('folders.errors.update_failed', id: @folder.id, error: $!), :conflict
  end

  #
  # Delete a folder. DOES NOT DELETE ANY JOBS! Folders don't contain jobs. They grab the jobs based on the folder's expression
  #
  def destroy
    @folder.destroy
    message I18n.t('folders.messages.deleted', id: @folder.id), :ok
  end

  private

  def folder
    @folder = Folder.mine(current_user).where(id: params[:id]).first
    error(I18n.t('folders.errors.not_found'), :not_found) && return if @folder.blank?
  end
end
