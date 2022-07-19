Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users do
    get "/users/sign_out", to: "devise/sessions#destroy", as: :destroy_user_session
  end
  
  devise_scope :user do
    get '/signout', to: 'devise/sessions#destroy', as: :signout
  end

  root to: "posts#index", as: "home"
  resources :posts do
    resources :comments

  resources :users
  end
end