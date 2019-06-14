# Preview all emails at http://localhost:3000/rails/mailers/main_mailer
class MainMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/main_mailer/notify_question_author
  def notify_question_author

    # question = Question.create email: 'edycop@gmail.com', body: 'Test question'
    # answer = Answer.create email: 'ecaldon@gmail.com', body: 'Test answer'
    #
    # question.answers << answer

    # mail = MainMailer.notify_question_author(answer)

    mail = MainMailer.notify_question_author(Answer.first)

    # MainMailer.notify_question_author
  end

end
