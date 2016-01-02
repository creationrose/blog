Rails.application.routes.draw do

  post "users/token", to: "users#handle_token"
  devise_for :users
  resources :posts do
    resources :comments
  end
  root to: "home#index"

end
