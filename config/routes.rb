Rails.application.routes.draw do
  root 'home#index'
  resources :lenses
  devise_for :users
  post 'callback' => 'line_bot#callback'
end
