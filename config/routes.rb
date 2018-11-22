Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   	get '/admin' => 'sessions#new'
  	get '/login' => 'sessions#index'
  	get '/logout' => 'sessions#destroy'

  root to: 'formlets#new'
  resources :sessions, only: [:index, :create, :destroy]
  resources :formlets, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
