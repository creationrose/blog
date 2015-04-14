Rails.application.routes.draw do

<<<<<<< HEAD
  root "posts#index"

  resources :posts do
    resources :comments
  end
=======
  devise_for :users
  resources :posts do
    resources :comments
  end
  root to: "home#index"
>>>>>>> 251ce9a
end
