Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :movies do
    resources :comments, only: [:create, :destroy]  do
      resource :favorites, only: [:create, :destroy]
    end

  end
  namespace :admin do
    resources :movies do
      resources :comments
    end
  end
end
