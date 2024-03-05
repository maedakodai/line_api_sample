Rails.application.routes.draw do
  resources :lenses
  devise_for :users
  post 'callback' => 'line_bot#callback'
end
