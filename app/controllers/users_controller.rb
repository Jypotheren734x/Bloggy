class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :update]

  def show
    @user = User.find(params[:id])
    @user.update(views: @user.views + 1)
  end

  def edit
    @user = current_user
  end

  def update
    current_user.update(first_name: params[:user][:first_name]) if !params[:user][:first_name].nil?
    current_user.update(last_name: params[:user][:last_name]) if !params[:user][:last_name].nil?
  end

end
