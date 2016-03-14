class Order < ActiveRecord::Base
  has_many :foods
  has_many :carts
  validates :username, presence: true
  validates :phone, presence: true
  validates :email, presence: true
end
