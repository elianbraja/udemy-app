Rails.application.routes.draw do
  resources :portofolios, except: [:show]
  get 'portofolio/:id', to: 'portofolios#show', as: 'portofolio_show'
  root to: 'portofolios#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
