Rails.application.routes.draw do

  root to: "terrenos#index"
  
  resources :loteamentos
  resources :corretores
  resources :empresas
  resources :clientes
  resources :terrenos
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :lotes
      resources :terrenos
      resources :loteamentos
      post   '/sign_in'  => 'sessions#create'
      delete '/sign_out' => 'sessions#destroy'
    end
  end
end
