class Rating < ActiveRecord::Base
  belongs_to :food
  validates :name, presence: true
  validates :comment, presence: true
  validates :stars, presence: true
end
