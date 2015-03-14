Rails.application.routes.draw do
  root "subs#index"
  resources :users
  resource :session, only: [:new, :create, :destroy]
  resources :subs, except: [:destroy]
  resources :posts, except: [:index, :destroy]
end
 
# Prefix Verb   URI Pattern               Controller#Action
#   root GET    /                         subs#show
#  users GET    /users(.:format)          users#index
#        POST   /users(.:format)          users#create
# new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#   user GET    /users/:id(.:format)      users#show
#        PATCH  /users/:id(.:format)      users#update
#        PUT    /users/:id(.:format)      users#update
#        DELETE /users/:id(.:format)      users#destroy
# session POST   /session(.:format)        sessions#create
# new_session GET    /session/new(.:format)    sessions#new
#        DELETE /session(.:format)        sessions#destroy
#   subs GET    /subs(.:format)           subs#index
#        POST   /subs(.:format)           subs#create
# new_sub GET    /subs/new(.:format)       subs#new
# edit_sub GET    /subs/:id/edit(.:format)  subs#edit
#    sub GET    /subs/:id(.:format)       subs#show
#        PATCH  /subs/:id(.:format)       subs#update
#        PUT    /subs/:id(.:format)       subs#update
#  posts POST   /posts(.:format)          posts#create
# new_post GET    /posts/new(.:format)      posts#new
# edit_post GET    /posts/:id/edit(.:format) posts#edit
#   post GET    /posts/:id(.:format)      posts#show
#        PATCH  /posts/:id(.:format)      posts#update
#        PUT    /posts/:id(.:format)      posts#update
