Rails.application.routes.draw do

  root to: "lotes#index"
  resources :corretores
  resources :empresas
  resources :clientes
  resources :lotes
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :lotes
    end
  end
end
