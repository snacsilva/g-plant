Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get 'loteamentos/index'
      get 'loteamentos/show'
    end
  end
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
      resources :terrenos
      post   '/sign_in'  => 'sessions#create'
      delete '/sign_out' => 'sessions#destroy'
    end
  end
end
