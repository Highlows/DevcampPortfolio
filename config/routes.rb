Rails.application.routes.draw do
  devise_for :users
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: "portfolio_show"
  get 'portfolios/angular', to: 'portfolios#angular'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  


  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
