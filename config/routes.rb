Rails.application.routes.draw do
  resources :notices
  root "notices#index"
end