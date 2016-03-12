class MenuController < ApplicationController
   def index
    @section = Section.find(1)
    @q = @section.foods.ransack(params[:q])
    @foods = @q.result

  end

  def breakfast
    @section = Section.find(1)
    @q = @section.foods.ransack(params[:q])
    @foods = @q.result
  end

  def lunch
    @section = Section.find(2)
    @q = @section.foods.ransack(params[:q])
    @foods = @q.result
  end

  def dinner
    @section = Section.find(3)
    @q = @section.foods.ransack(params[:q])
    @foods = @q.result
  end

  def drink
    @section = Section.find(4)
    # @foods = @section.foods.order(sort_column + " " + sort_direction)
     @q = @section.foods.ransack(params[:q])
    @foods = @q.result
    @q.build_condition
  end

  private

  # def sort_column
  #   params[:sort] || "name" || "price" || "views"
  # end

  # def sort_direction
  #   params[:direction] || "asc"
  # end
end
