class User < ActiveRecord::Base
  has_secure_password
  # validates_confirmation_of :password
  # validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email


  has_many :commitments, dependent: :destroy
  has_many :competitions, through: :commitments
  has_many :deadlines


  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

  def deadlines
    deadlines = []
    self.competitions.each do |c|
      if c.deadlines.any?
        deadlines.push(c.deadlines)
      end
    end
    deadlines.flatten
    deadlines.sort_by
    return deadlines
  end

end
