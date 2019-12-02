Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events, except: [:update, :destroy] do
    member do
      post :join
      delete :cancel
    end
    resources :reviews, only: [:new, :create]
  end
  resources :users, only: [:show]

  resources :spots, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
