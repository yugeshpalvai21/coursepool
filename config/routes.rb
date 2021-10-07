Rails.application.routes.draw do
  root "pages#home"
  get "privacy", to: "pages#privacy"
  get "about", to: "pages#about"
end
