Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events, except: [:update, :destroy] do
    member do
      post :join
      delete :cancel
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
