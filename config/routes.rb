Rails.application.routes.draw do
  resources :tournaments
  resources :players
  root 'home#index'
end
