class UserMailer < ApplicationMailer
  default from: "art.design.competitions@gmail.com"

  def registration_confirmation(user)
    mail(:to => user.email, :subject => "Registered")
  end
end
