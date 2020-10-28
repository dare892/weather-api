Rails.application.routes.draw do
  resources :api_keys
  devise_for :users
  get 'v1/weather' => 'pages#weather'
  post 'check_weather' => 'pages#check_weather'
  root to: 'pages#index'
end
