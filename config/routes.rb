Rails.application.routes.draw do
  
  root to:"homes#top"
  devise_for :users

  resources :books
  resources :user, only:[:index,:show,:edit,:update]
  get "/" => "homes#top", as: "top"
  get "home/about" => "homes#about", as: "about"
  post 'user/1', to: 'books#create'
  post 'user/', to: 'books#create'
  get "/users" => "user#index"
  get "/users" => "user#show"
  get "/users" => "user#edit"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
