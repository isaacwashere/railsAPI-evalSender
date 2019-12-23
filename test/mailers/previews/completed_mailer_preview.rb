# Preview all emails at http://localhost:3000/rails/mailers/completed_mailer
class CompletedMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/completed_mailer/new_completed
  def new_completed
    CompletedMailer.new_completed
  end

end
