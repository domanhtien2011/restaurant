class WelcomeController < ApplicationController

  def index
     @q = Food.ransack(params[:q])
    @foods = @q.result
  end


  def contact

  end
end
