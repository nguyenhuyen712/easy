Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: "users/sessions", registrations: "users/registrations"},
    path: "", path_names: {sign_in: "login", sign_out: "logout", sign_up: "register"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#index"

  namespace :admin do
    root "pages#index"
    resources :categories
    resources :restaurant_categories
    resources :food_categories
  end
end
