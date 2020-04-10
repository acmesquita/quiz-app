class FindQuestionsApi

  URL = 'https://opentdb.com/api.php?amount=10&category=9&difficulty=easy&type=multiple'

  def self.call
    new.call
  end
  
  def call
    request.map do |q|
      Question.new(q['category'], q['type'], q['difficulty'], q['question'], q['correct_answer'], q['incorrect_answers'])
    end
  end
  
  def request
    respose = RestClient.get(URL)
    
    JSON.parse(respose.body)['results']
  end
end