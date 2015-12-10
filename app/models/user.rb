class User < ActiveRecord::Base
  has_many :commitments, dependent: :destroy
  has_many :competitions, through: :commitments
end
