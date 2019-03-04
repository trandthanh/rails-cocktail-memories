Rails.application.routes.draw do
  resources :cocktails, only: [ :index, :show, :new, :create ] do
    resources :doses, only: [ :new, :create ]
    resources :reviews, only: [ :new, :create ]
  end

  resources :doses, only: [ :destroy ]

  # get '/search', to: "pages#search"
  get '/search', to: "cocktails#index"

  root to: "pages#home"
end
