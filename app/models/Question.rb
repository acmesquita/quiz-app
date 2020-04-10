class Question

  attr_accessor :category, :type, :difficulty, :question, :correct_answer, :incorrect_answers
  def initialize(category, type, difficulty, question, correct_answer, incorrect_answers)
    @category = category
    @type = type
    @difficulty = difficulty
    @question = question
    @correct_answer = correct_answer
    @incorrect_answers = incorrect_answers
  end

end