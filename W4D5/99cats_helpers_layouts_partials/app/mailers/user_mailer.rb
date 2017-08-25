class UserMailer < ApplicationMailer
  default from: 'from@example.com'

  def welcome_email(user)
    @user = user
    @url = 'http://example.com/login'
    mail(to: 'johnschoeman1729@gmail.com', subject: 'Welcome to my Awesome Site')
  end


end
