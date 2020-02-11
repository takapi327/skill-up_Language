Rails.application.routes.draw do
  # get 'language/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  # get 'users/index'
  # post 'language/new' => 'language#create'
  # get 'language/new' => 'language#new'
  resources :languages, only: [:index, :new, :create, :show]
  namespace :api, format: 'json' do
    get 'articles/preview'
  end
end
