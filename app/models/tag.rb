class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :competitions, through: :taggings
end
