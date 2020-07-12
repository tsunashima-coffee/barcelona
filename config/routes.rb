Rails.application.routes.draw do
  root to: 'sessions#new'

  resources :categories

  resources :spots

  resources :users do
    member do
      get 'spots'
    end
  end

  resources :sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
