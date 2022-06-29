class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    @question = params[:question]

    if @question.include?('?')
      @answers = @answers[1]
    elsif @question.downcase == "i am going to work"
      @answers = @answers[0]
    else
      @answers = @answers[2]
    end
  end
end
