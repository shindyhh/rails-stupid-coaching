class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ""
    if params[:question].downcase == "I am going to work".downcase
      @answer = "Great!"
    elsif params[:question].ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif params[:question] == ""
      @answer = ""
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
