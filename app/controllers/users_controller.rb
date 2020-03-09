class UsersController < ApplicationController

  def show

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  end

  def edit

  end

  def update

  end

  def destroy
    user.destroy
  end

end
