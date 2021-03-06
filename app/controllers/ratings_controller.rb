class RatingsController < ApplicationController
  before_action :find_food
  def new
    @rating = @food.ratings.build
    @rating.food_id = @food.id
  end

  def create
    @rating = @food.ratings.build(rating_params)
    @rating.food_id = @food.id

    if @rating.save
      flash[:success] = "Thank you for rating our dish"
      redirect_to food_path(@food)
    else
      render 'new'
    end
  end

  private

    def rating_params
      params.require(:rating).permit(:name, :comment, :stars)
    end

    def find_food
      @food = Food.find(params[:food_id])
    end
end
