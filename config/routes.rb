Rails.application.routes.draw do
  root to: 'actions#new'
  post 'actions', to: 'actions#score'
  get 'score', to: 'actions#score'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
