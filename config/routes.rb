Rails.application.routes.draw do
  resources :working_dates
  resources :presences
  resources :assignments
  resources :services
  resources :engineers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
