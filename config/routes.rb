Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'chatty#index'

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  post 'message', to: 'messages#create'

  get 'logout', to: 'sessions#destroy'
end
