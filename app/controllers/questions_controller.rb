class QuestionsController < ApplicationController
  def ask
    @foo = "adadad"
  end

  def answer
    q = params[:question]
    if q.ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif q == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
p @answer
