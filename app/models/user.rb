class User < ActiveRecord::Base
  has_secure_password
  # validates_confirmation_of :password
  # validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email


  has_many :commitments, dependent: :destroy
  has_many :competitions, through: :commitments
  has_many :deadlines
  has_many :competitions, through: :deadlines


  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

end
