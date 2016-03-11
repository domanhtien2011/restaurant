class Food < ActiveRecord::Base
  belongs_to :section
  belongs_to :order
  is_impressionable :counter_cache => true, :column_name => :views, :unique => :all
end
