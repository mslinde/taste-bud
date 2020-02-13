Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events, except: [:update] do
    member do
      post :join
      delete :cancel
    end

  end
  resources :users, only: [:show]

  resources :spots, only: [:destroy] do
    resources :reviews, only: [:new, :create]
    resources :comments, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
