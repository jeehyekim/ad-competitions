class Competition < ActiveRecord::Base
  has_many :commitments
  has_many :users, through: :commitments
  has_many :tags
  has_many :categories, through: :tags
end
