class CompletedMailer < ApplicationMailer
  default :from => 'ijcurtiss12@gmail.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.completed_mailer.new_completed.subject
  #

  def new_completed(questions, user)
    @user = User.last
    @responses = @user.responses
    @questions = questions
    mail( :to => "ijcurtiss99@gmail.com",
          :cc => "ijcurtiss7@gmailc.com",
          :subject => "Coding Challenge Submission" )
  end
  
end
