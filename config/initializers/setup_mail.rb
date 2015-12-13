ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: "gmail.com",
  user_name: "art.design.competitions@gmail.com",
  password: "competitions2015",
  authentication: "plain",
  enable_starttls_auto: true
}

# ActionMailer::Base.default