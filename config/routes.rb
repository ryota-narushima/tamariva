Rails.application.routes.draw do
  root to: 'areas#index'
  resources :areas, only: :index
end
