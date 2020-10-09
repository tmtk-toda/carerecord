Rails.application.routes.draw do
  resources :contacts
  get 'staff_infos/index'
  get '/staff_infos', to: 'staff_infos#index'
  resources :staff_infos
  resources :labels
  devise_for :users
  get 'users/index'
  get '/users', to: 'users#index'
  get 'clients/index'
  get '/clients', to: 'clients#index'
  get 'care_records/index'
  get '/care_records', to: 'care_records#index'
  resources :care_records do
    resources :comments
  end
  resources :clients
  root 'users#index'
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
