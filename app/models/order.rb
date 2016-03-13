class Order < ActiveRecord::Base
  has_many :foods
  has_many :carts
  has_one :shopping_cart
end
