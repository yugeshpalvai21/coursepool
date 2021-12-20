Rails.application.routes.draw do
  devise_for :users
  
  resources :courses do
    resources :lessons
  end
  get "courses_activity", to: "pages#courses_activity", as: "courses_activity"
  
  resources :users, only: [:index, :show, :edit, :update]
  
  root "pages#home"
  get "privacy", to: "pages#privacy"
  get "about", to: "pages#about"  
end
