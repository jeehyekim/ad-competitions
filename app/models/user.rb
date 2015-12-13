class User < ActiveRecord::Base
  has_secure_password
  
  has_many :commitments, dependent: :destroy
  has_many :competitions, through: :commitments
end
