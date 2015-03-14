
Rails.application.routes.draw do
  root "subs#index"
  resources :users
  resource :session, only: [:new, :create, :destroy]
  resources :subs, except: [:destroy]
  resources :posts, except: [:index, :destroy]
end
