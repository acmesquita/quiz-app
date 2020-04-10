class GameController < ApplicationController
  def index
    questions = FindQuestionsApi.call
    @game = Game.new(questions, 'Catharina')
  end
end
