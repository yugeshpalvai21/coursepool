Rails.application.routes.draw do
  devise_for :users
  resources :courses
  root "pages#home"
  get "privacy", to: "pages#privacy"
  get "about", to: "pages#about"
end
