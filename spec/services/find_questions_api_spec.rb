require 'rails_helper'

RSpec.describe FindQuestionsApi do

  context '#call' do
    it 'should be return a list to Questions' do
      mock = {
        "response_code": 0,
        "results": [
          {
            "category": "General Knowledge",
            "type": "multiple",
            "difficulty": "easy",
            "question": "Which company did Valve cooperate with in the creation of the Vive?",
            "correct_answer": "HTC",
            "incorrect_answers": [
              "Oculus",
              "Google",
              "Razer"
            ]
          },
          {
            "category": "General Knowledge",
            "type": "multiple",
            "difficulty": "easy",
            "question": "Five dollars is worth how many nickles?",
            "correct_answer": "100",
            "incorrect_answers": [
              "50",
              "25",
              "69"
            ]
          },
          {
            "category": "General Knowledge",
            "type": "multiple",
            "difficulty": "easy",
            "question": "What do the letters of the fast food chain KFC stand for?",
            "correct_answer": "Kentucky Fried Chicken",
            "incorrect_answers": [
              "Kentucky Fresh Cheese",
              "Kibbled Freaky Cow",
              "Kiwi Food Cut"
            ]
          },
          {
            "category": "General Knowledge",
            "type": "multiple",
            "difficulty": "easy",
            "question": "What machine element is located in the center of fidget spinners?",
            "correct_answer": "Bearings",
            "incorrect_answers": [
              "Axles",
              "Gears",
              "Belts"
            ]
          },
          {
            "category": "General Knowledge",
            "type": "multiple",
            "difficulty": "easy",
            "question": "Which of the following presidents is not on Mount Rushmore?",
            "correct_answer": "John F. Kennedy",
            "incorrect_answers": [
              "Theodore Roosevelt",
              "Abraham Lincoln",
              "Thomas Jefferson"
            ]
          },
          {
            "category": "General Knowledge",
            "type": "multiple",
            "difficulty": "easy",
            "question": "Which of the following is the IATA code for Manchester Airport?",
            "correct_answer": "MAN",
            "incorrect_answers": [
              "EGLL",
              "LHR",
              "EGCC"
            ]
          },
          {
            "category": "General Knowledge",
            "type": "multiple",
            "difficulty": "easy",
            "question": "What nuts are used in the production of marzipan?",
            "correct_answer": "Almonds",
            "incorrect_answers": [
              "Peanuts",
              "Walnuts",
              "Pistachios"
            ]
          },
          {
            "category": "General Knowledge",
            "type": "multiple",
            "difficulty": "easy",
            "question": "When someone is inexperienced they are said to be what color?",
            "correct_answer": "Green",
            "incorrect_answers": [
              "Red",
              "Blue",
              "Yellow"
            ]
          },
          {
            "category": "General Knowledge",
            "type": "multiple",
            "difficulty": "easy",
            "question": "If you are caught &quot;Goldbricking&quot;, what are you doing wrong?",
            "correct_answer": "Slacking",
            "incorrect_answers": [
              "Smoking",
              "Stealing",
              "Cheating"
            ]
          },
          {
            "category": "General Knowledge",
            "type": "multiple",
            "difficulty": "easy",
            "question": "The Flag of the European Union has how many stars on it?",
            "correct_answer": "12",
            "incorrect_answers": [
              "10",
              "14",
              "16"
            ]
          }
        ]
      }
      allow_any_instance_of(FindQuestionsApi).to receive(:request).and_return(mock)
      questions = described_class.new.call
      expect(questions.size).to eql(10)
    end
  end
end