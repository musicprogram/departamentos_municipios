Rails.application.routes.draw do
  resources :municipios
  resources :departamentos
  root 'municipios#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
