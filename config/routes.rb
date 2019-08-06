Rails.application.routes.draw do
  resources :corretores
  resources :empresas
  resources :clientes
  resources :lotes
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
