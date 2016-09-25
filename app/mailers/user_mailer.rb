class UserMailer < ApplicationMailer
  default from: 'notifications@frontdesk.com'

  def notification_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Library Room Booking Notification')
  end
end
