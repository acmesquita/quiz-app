#
# tempo de inicio
# tempo final
# perguntas
# quantidade de acertos
# quantidade de erros
# avaliação
# porcentagem mínima
# porcentagem de acerto
# nome do jogador
# pergunta corrente
# 
class Game

  attr_accessor :time_start, :time_end, :questions, :approves, :errors, :status, :percent_min, :percent_approves, :name_player, :question_current
  
  def initialize(questions, name_player)
    @time_start = Time.zone.now
    @time_end
    @questions = questions
    @approves = 0
    @errors = 0
    @status = :init_game
    @percent_min = 0.75
    @percent_approves = 0
    @name_player = name_player
    @question_current = questions.first
  end

end