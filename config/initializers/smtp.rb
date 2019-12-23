ActionMailer::Base.smtp_settings = {
  domain: '',
  address:        "smtp.sendgrid.net",
  port:            587,
  authentication: :plain,
  user_name:      'apikey',
  password:       ENV['SENDGRID_PASSWORD']
}





