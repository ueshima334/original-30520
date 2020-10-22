Rails.application.routes.draw do
  devise_for :users
root to: "users#index"
resources :users,only:[:show]
resources :rooms,only:[:index]
resources :posts,only:[:index,:new,:create]
end
