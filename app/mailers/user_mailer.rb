class UserMailer < ApplicationMailer
  default from: 'notifications@frontdesk.com'

  def notification_email(user)
    @user = user
    @url  = 'https://frontdesk517oodd.herokuapp.com'
    mail(to: @user.email, subject: 'Library Room Booking Notification')
  end
end

def invite_email(user,booking)
  @user = user
  @booking = booking
  @url  = 'https://frontdesk517oodd.herokuapp.com'
  mail(to: @user, subject: 'Library Room Booking Notification')
end
end