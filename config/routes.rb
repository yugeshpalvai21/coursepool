Rails.application.routes.draw do
  devise_for :users
  resources :courses
  resources :users, only: [:index]
  root "pages#home"
  get "privacy", to: "pages#privacy"
  get "about", to: "pages#about"
end
