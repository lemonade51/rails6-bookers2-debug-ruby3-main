Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/show'
  get 'users/edit'
  root to: "homes#top"
  devise_for :users

  get "/home" => "homes#top", as: "/"
  get "/home/about" => "homes#about", as: "about"

  resources :books, only: [:index,:show,:edit,:create,:destroy,:update]

  resources :users, only: [:index,:show,:edit,:update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
