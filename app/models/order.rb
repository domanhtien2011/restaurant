class Order < ActiveRecord::Base
  has_many :foods
  has_many :carts
end
