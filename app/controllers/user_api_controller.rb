# frozen_string_literal: true

#
# Handles calls to the /user_api routes
#
class UserApiController < ApplicationController
  before_action :user, only: %i[show update destroy]

  def index
    users = User.all

    users_return = paginate users
    message I18n.t('users.messages.received'), :ok, false, users_return, 'userarray'
  end

  def show
    message I18n.t('users.messages.received'), :ok, false, @user, 'user'
  end

  def create
    user = User.create!(username: params[:username], password: params[:password], password_confirmation: params[:password])
    message I18n.t('users.messages.created', id: user.id), :created, false, user, 'user'
  rescue ActiveRecord::RecordNotUnique
    error I18n.t('users.errors.already_exists'), :forbidden
  end

  def update
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    @user.save!
    message I18n.t('users.messages.updated', id: @user.id), :ok, false, @user, 'user'
  rescue StandardError
    error I18n.t('users.errors.update_failed', id: @user.id, error: $ERROR_INFO), :forbidden
  end

  def destroy
    error(I18n.t('users.errors.cant_delete_yourself'), :forbidden) && return if current_user.id == @user.id

    @user.destroy
    message I18n.t('users.messages.deleted', id: @user.id), :ok
  end

  private

  def user
    @user = User.where(id: params[:id]).first
    error(I18n.t('users.errors.not_found'), :not_found) && return if @user.blank?
  end
end
