class UserController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @user.update(views: @user.views + 1)
  end
end
