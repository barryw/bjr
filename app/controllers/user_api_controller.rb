class UserApiController < ApplicationController
  before_action :get_user, only: [:show, :update, :destroy]

  def index
    users = User.all
    paginate json: users
  end

  def show
    render json: @user
  end

  def create
    user = User.create!(username: params[:username], password: params[:password], password_confirmation: params[:password])
    render json: user, status: :created
  rescue ActiveRecord::RecordNotUnique
    error I18n.t('users.errors.already_exists'), :forbidden
  end

  def update
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    @user.save
    head :no_content
  end

  def destroy
    error I18n.t('users.errors.cant_delete_yourself'), :forbidden and return if current_user.id == @user.id
    @user.destroy
    head :no_content
  end

  private

  def get_user
    @user = User.where(id: params[:id]).first
    error I18n.t('users.errors.not_found'), :not_found and return if @user.blank?
  end
end
