class User < ActiveRecord::Base
  require 'bcrypt'
  has_secure_password
  # attr_accessible :email, :password
  # before_save :encrypt_password
  # validates_confirmation_of :password
  # validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email


  has_many :commitments, dependent: :destroy
  has_many :competitions, through: :commitments

  # after_create :subscribe_user_to_mailing_list
  # after_create :send_welcome_email_to_user

  # def subscribe_user_to_mailing_list
  #   SubscrubeUserToMailingListJob.perform_later(self)
  # end

  # def send_welcome_email_to_user
  #   User.Mailer.welcome_email(self)
  # end


  # def encrypt_password
  #   if password.present?
  #     self.password_salt = BCrypt::Engine.generate_salt
  #     self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  #   end
  # end

  # def self.authenticate(email, password)
  #   @user = find_by_email(email)
  #   if @user && @user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
  #     @user
  #   else
  #     nil
  #   end
  # end

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

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end

  # def self.confirm(email_param, password_param)
  #   user = User.find_by_email(email_param)
  #   user.authenticate(password_param)
  # end

end
