Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'formlets#index'
  resources :formlets, only: [:index, :new, :create, :edit, :update, :destroy]
end
