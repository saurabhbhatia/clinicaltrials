class UserMailer < ActionMailer::Base
  default :from => "noreply@iraas.co.in"
def registration_confirmation(user)
    @user = user
    @url  = "http://iraas.co.in/users/sign_in"
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")
  end
end
