class WelcomeController < ApplicationController
  def index
  end

  def menu
    @sections = Section.all
    @section = Section.find(1)
  end

  def breakfast
    @section = Section.find(1)
  end

  def lunch
    @section = Section.find(2)
  end

  def dinner
    @section = Section.find(3)
  end

  def drink
    @section = Section.find(4)
  end

  def contact

  end
end
