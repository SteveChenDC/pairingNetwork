Rails.application.routes.draw do
  root to: "users#new"
  resources :users, only: [:index, :show, :new]
end
