class ItemCartsController < ApplicationController

  include CurrentCart
  before_action :set_item_cart, only: [:show, :edit, :update, :destroy]
  before_action :set_cart, only: [:create]


  def index
    @item_carts = LineItem.all
  end


  def show
  end


  def new
    @item_cart = LineItem.new
  end


  def edit
  end


  def create
    item = Item.find(params[:item_id])
    @item_cart = @cart.add_item(item)

    respond_to do |format|
      if @item_cart.save
        format.html { redirect_to @item_cart.cart, notice: 'Item added to cart.' }
        format.json { render :show, status: :created, location: @item_cart }
      else
        format.html { render :new }
        format.json { render json: @item_cart.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @item_cart.update(item_cart_params)
        format.html { redirect_to @item_cart, notice: 'item  was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_cart }
      else
        format.html { render :edit }
        format.json { render json: @item_cart.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @cart = Cart.find(session[:cart_id])
    @item_cart.destroy
    respond_to do |format|
      format.html { redirect_to cart_path(@cart), notice: 'Item successfully removed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_item_cart
      @item_cart = LineItem.find(params[:id])
    end


    def item_cart_params
      params.require(:item_cart).permit(:item_id)
    end


end
