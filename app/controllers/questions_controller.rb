class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = [ "Great!", "Silly question", "martinique" ]
    if params[:question] == "I am going to work"
      @answer = @answer[0]
    elsif params[:question].end("?")
      @answer = @answer[1]
    else
      @answer = @answer[2]
    end
  end
end
