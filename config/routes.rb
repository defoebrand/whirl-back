Rails.application.routes.draw do
  get 'influencers/index'
  get 'companies/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :advertisements, only: :index
end
