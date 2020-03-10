class UsersController < ApplicationController

  def show

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
    else
      render new_user_path
  end

  def edit

  end

  def update

  end

  def destroy
    user.destroy
  end

end
