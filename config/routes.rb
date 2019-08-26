Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get 'lotes/index'
      get 'lotes/show'
    end
  end
  root to: "lotes#index"
  resources :corretores
  resources :empresas
  resources :clientes
  resources :lotes
  devise_for :users

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :lotes
    end
  end
end
