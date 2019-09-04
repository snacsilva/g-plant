Rails.application.routes.draw do

  resources :loteamentos
  root to: "terrenos#index"
  resources :corretores
  resources :empresas
  resources :clientes
  resources :terrenos
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :lotes
    end
  end
end
