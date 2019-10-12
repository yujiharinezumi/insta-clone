Rails.application.routes.draw do


  resources :blogs do
    collection do
      post :confirm
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :sessions, only: [:new,:create,:destroy]
  resources :favorites, only:[:create,:destroy]
end
