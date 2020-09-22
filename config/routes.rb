Rails.application.routes.draw do
  get 'signups/new'
  get 'signups/create'
  resources :activities, only: [:index, :show]
  resources :campers, only: [:index, :show, :new, :create, :update]
  resources :signups, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
