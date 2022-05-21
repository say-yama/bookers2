Rails.application.routes.draw do

  root to:"homes#top"
  devise_for :users

  resources :books
  resources :users
  get "/" => "homes#top", as: "top"
  get "home/about" => "homes#about", as: "about"
  post 'users/1', to: 'books#create'
  post 'users/2', to: 'books#create'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  get "users" => "users#show", as: "usersshow"
  # get 'books/:id/edit' => 'books#edit'
  # patch "/books/2/edit" => "books#edit"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
