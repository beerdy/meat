class MessageMailer < ApplicationMailer
  default from: "meat.lipetsk@yandex.ru"
 
  def welcome_email(message)
    @message = message
    @url  = 'http://nshu.ru'
    mail(to: 'meat.lipetsk@yandex.ru,meat.lp@mail.ru', subject: 'SITE message')
  end
end
