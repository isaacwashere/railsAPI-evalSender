Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :questions
  # resources :users
  resources :responses 
  post 'create_user', to: 'responses#create_user'
  post 'create_and_send', to: 'responses#create_and_send'


end
