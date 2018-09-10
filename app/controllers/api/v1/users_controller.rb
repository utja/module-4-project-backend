class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  # get users
  # def index
  #   users = User.all
  #   render json: users
  # end

  #get users/:id
  def show
    render json: @user
  end

  # post/create user
  def create
    user = User.create(user_params)
    render json: user
  end

  # patch/edit user
  def update
    @user.update(user_params)
    render json: @user
  end

  # delete user
  def destroy
    @user.destroy
  end

  private
  def user_params
    params.permit(:name)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
