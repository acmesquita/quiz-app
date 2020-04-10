require 'rails_helper'

RSpec.describe GameController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "returns instance of game" do
      get :index
      expect(assigns(:game)).not_to be_nil
    end

    it "returns true game#questions not empty" do
      mock = JSON.parse('{
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
          }
        ]
      }')['results']
      allow_any_instance_of(FindQuestionsApi).to receive(:request).and_return(mock)
      get :index
      
      expect(assigns(:game).questions.size).to eql(1)
    end
  end

end
