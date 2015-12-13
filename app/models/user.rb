class User < ActiveRecord::Base
  
  has_secure_password

  has_many :commitments, dependent: :destroy
  has_many :competitions, through: :commitments

  # BCrypt::Engine.cost = 12

  # # validations 
  # validates :email, :password_digest, presence: true

  # def authenticate(unencrypted_password)
  #   secure_password = BCrypt::Password.new(self.password_digest)
  #   if secure_password == unencrypted_password
  #     self
  #   else
  #     false
  #   end
  # end

  # def password=(unencrypted_password)
  #   @password = unencrypted_password
  #   self.password_digest = BCrypt::Password.create(@password)
  # end

  # def password
  #   @password
  # end

  # def self.confirm(email_param, password_param)
  #   user = User.find_by_email(email_param)
  #   user.authenticate(password_param)
  # end

end
