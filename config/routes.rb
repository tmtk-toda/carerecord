Rails.application.routes.draw do
  devise_for :users
  root 'clients#index'
  get 'clients/index'
  get '/clients', to: 'clients#index'
  get 'care_records/index'
  get '/care_records', to: 'care_records#index'
  resources :care_records
  resources :clients
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
