Rails.application.routes.draw do
  resources :events
  resources :trips

  get 'calendars/index'
  get 'calendars/show'

  devise_for :users
  root to: "calendars#index"
  post '/trips/:id', to: 'trips#remove'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
