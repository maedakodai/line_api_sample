Rails.application.routes.draw do
  devise_for :users
  post 'callback' => 'line_bot#callback'
end
