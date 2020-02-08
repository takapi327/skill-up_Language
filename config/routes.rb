Rails.application.routes.draw do
  # get 'language/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  # get 'users/index'
  resources :language, only: [:index, :new, :create]
end
