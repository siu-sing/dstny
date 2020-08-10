class UserMailer < ApplicationMailer
  def flag_question_email(question, user)
    @question = question
    @user = user
    mail(to: "vegetable.fats@gmail.com", subject: "[Alert] Inappropriate post on DSTNY")
  end
end
