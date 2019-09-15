class UserApiController < ApplicationController
  before_action :get_user, only: [:show, :update, :destroy]

  def index
    users = User.all
    render json: users
  end

  def show
    render json: @user
  end

  def create
    user = User.create!(username: params[:username], password: params[:password], password_confirmation: params[:password])
    render json: user, status: :created
  rescue ActiveRecord::RecordNotUnique
    render json: { error: 'A user with this username already exists' }, status: 403
  end

  def update
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    @user.save
    head :no_content
  end

  def destroy
    render json: { error: 'Cannot delete yourself' }, status: 403 and return if current_user.id == @user.id
    @user.destroy
    head :no_content
  end

  private

  def get_user
    @user = User.where(id: params[:id]).first
    render json: { error: 'User not found' }, status: 404 and return if @user.blank?
  end
end
