Rails.application.routes.draw do
  root to: 'comic_characters#index'

  resources :comic_characters
end
