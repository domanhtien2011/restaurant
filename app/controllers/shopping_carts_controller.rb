class ShoppingCartsController < ApplicationController
  before_filter :extract_shopping_cart

  def create
    @food = Food.find(params[:food_id])
    @shopping_cart.add(@food, @food.price)
    redirect_to shopping_cart_path
  end

  def buildOrder
    @shopping_cart = ShoppingCart.new(shopping_cart_params)
    if @shopping_cart.save
      redirect_to shopping_cart_complete_path
    end
  end

  def show
     @q = Food.ransack(params[:q])
    @foods = @q.result
  end

  def complete
     @q = Food.ransack(params[:q])
    @foods = @q.result
  end

  private

    def extract_shopping_cart
      shopping_cart_id = session[:shopping_cart_id]
      @shopping_cart = session[:shopping_cart_id] ? ShoppingCart.find(shopping_cart_id) : ShoppingCart.create
      session[:shopping_cart_id] = @shopping_cart.id
    end

    def shopping_cart_params
      params.require(:shopping_cart).permit(:username)
    end
end
