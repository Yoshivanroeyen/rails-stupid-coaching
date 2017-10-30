class QuestionsController < ApplicationController
  def answer
    @users_question = params[:users_question]

    @coach_response = coach_answer_enhanced()
  end

  def ask
  end

  private

  def coach_answer()
    if @users_question.downcase == "i am going to work right now!"
      ""
    elsif @users_question.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced()
    answer = coach_answer()
    if answer != ""
      if @users_question.upcase == @users_question
        "I can feel your motivation! #{answer}"
      else
        answer
      end
    else
      ""
    end
  end
end
