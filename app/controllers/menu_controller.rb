class MenuController < ApplicationController

  def index
    @section = Section.find(1)
    @foods = @section.foods.order(sort_column + " " + sort_direction)
  end

  def breakfast
    @section = Section.find(1)
     @foods = @section.foods.order(sort_column + " " + sort_direction)
  end

  def lunch
    @section = Section.find(2)
     @foods = @section.foods.order(sort_column + " " + sort_direction)
  end

  def dinner
    @section = Section.find(3)
     @foods = @section.foods.order(sort_column + " " + sort_direction)
  end

  def drink
    @section = Section.find(4)
    @foods = @section.foods.order(sort_column + " " + sort_direction)
  end

  private

  def sort_column
    params[:sort] || "name" || "price" || "views"
  end

  def sort_direction
    params[:direction] || "asc"
  end
end
