Rails.application.routes.draw do
  get 'game/index'
  post 'game/validade_answer'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to:'game#index'
end
