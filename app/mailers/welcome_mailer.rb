class WelcomeMailer < ApplicationMailer

  def send_greetings_notification(student_user)
    @student_user = student_user
    mail to: @student_user.email, subject: "Thank You for signing Up on our site"
  end
end
