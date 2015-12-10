class Competition < ActiveRecord::Base

  has_many :commitments
  has_many :users, through: :commitments
  has_many :taggings
  has_many :tags, through: :taggings


  
end
