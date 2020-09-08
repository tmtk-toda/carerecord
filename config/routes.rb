Rails.application.routes.draw do
  get 'clients/index'
  get '/clients', to: 'clients#index'
  get 'care_records/index'
  get '/care_records', to: 'care_records#index'
  resources :care_records
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
