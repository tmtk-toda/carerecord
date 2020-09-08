Rails.application.routes.draw do
  get 'clients/index'
  get '/clients', to: 'clients#index'
  get 'care_records/index'
  get '/care_records', to: 'care_records#index'
  resources :clients do
    resources :care_records
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
