Rails.application.routes.draw do
  resources :topics, :only => [:index, :show]
  resources :comments
  devise_for :users, path: "", path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'signup' }
  root to: 'pages#home'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :portfolios
  resources :blogs do
    member do
      post :toggle_status
    end
  end
end
