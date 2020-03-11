class UserMailer < ApplicationMailer
  default from: 'acastelbou@outlook.fr'

  def welcome_email(user)
    @user = user 
    @url  = 'https://catseyes.herokuapp.com/'
    mail(to: @user.email, subject: 'Bienvenue sur CatsEyes !')
  end
end
