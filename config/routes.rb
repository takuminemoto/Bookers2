Rails.application.routes.draw do
  root to: 'homes#top'
  
  devise_for :users
  get "home/about" => "homes#about" ,as: "about"
  resources :books, only: [:create, :index, :show, :destroy, :update, :edit]
  resources :users, only: [:show, :edit, :update, :index]
end
