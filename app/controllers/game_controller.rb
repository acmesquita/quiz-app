class GameController < ApplicationController
  def index
    questions = FindQuestionsApi.call
    @game = Game.new(questions, 'Catharina')
  end

  def validade_answer
    if (@game.question_current.correct_answer == answer_user){
      @game.question_current = @game.questions[@game.question_position + 1] rescue nil
    }
    render @game
  end

  private

  def answer_user
    params.require(:answer).permit!
  end
end
