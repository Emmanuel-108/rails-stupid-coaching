class QuestionsController < ApplicationController
  def ask
  end

  def answer
    user_answer = params[:question]
    @coach_message = ''

    if user_answer == 'I am going to work'
      @coach_message = 'Great!'
    elsif user_answer[user_answer.length - 1] == '?'
      @coach_message = 'Silly question, get dressed and go to work!'
    else
      @coach_message = "I don't care, get dressed and go to work!"
    end
  end
end
