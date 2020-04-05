class FindQuestionsApi

  URL = 'https://opentdb.com/api.php?amount=10&category=9&difficulty=easy&type=multiple'
  
  def call
    respose = RestClient.get(URL)
    
    body = JSON.parse(respose.body)
    puts body.results
  end
end