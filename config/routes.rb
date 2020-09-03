Rails.application.routes.draw do
  get 'care_records/index'
  get '/care_records', to: 'care_records#index'
  resources :care_records
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
