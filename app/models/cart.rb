class Cart < ActiveRecord::Base
  belongs_to :food
  belongs_to :order
end
