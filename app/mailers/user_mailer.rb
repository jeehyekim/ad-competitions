class UserMailer < ApplicationMailer
  default from: "art.design.competitions@gmail.com"

  def welcome_email(user)
    @user = user
    mail(:to => @user.email, :subject => "Welcome to AD Competitions")
  end
end
