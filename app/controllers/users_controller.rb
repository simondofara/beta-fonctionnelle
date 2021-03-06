class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      user_cart = Cart.create
      @cart.update(user_id: current_user.id)
      @user.cart = curent_cart
      log_in(@user)

    else
      render new_user_path
    end
  end

  def edit

  end

  def update

  end

  def destroy
    user.destroy
  end

end
