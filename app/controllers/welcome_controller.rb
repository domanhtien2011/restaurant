class WelcomeController < ApplicationController

  def index
     @q = Food.ransack(params[:q])
    @foods = @q.result
  end


  def contact
     @q = Food.ransack(params[:q])
    @foods = @q.result
  end
end
