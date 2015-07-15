# == Route Map
#
#      Prefix Verb   URI Pattern               Controller#Action
#       posts GET    /posts(.:format)          posts#index
#             POST   /posts(.:format)          posts#create
#    new_post GET    /posts/new(.:format)      posts#new
#   edit_post GET    /posts/:id/edit(.:format) posts#edit
#        post GET    /posts/:id(.:format)      posts#show
#             PATCH  /posts/:id(.:format)      posts#update
#             PUT    /posts/:id(.:format)      posts#update
#             DELETE /posts/:id(.:format)      posts#destroy
#       users GET    /users(.:format)          users#index
#             POST   /users(.:format)          users#create
#    new_user GET    /users/new(.:format)      users#new
#   edit_user GET    /users/:id/edit(.:format) users#edit
#        user GET    /users/:id(.:format)      users#show
#             PATCH  /users/:id(.:format)      users#update
#             PUT    /users/:id(.:format)      users#update
#             DELETE /users/:id(.:format)      users#destroy
# session_new GET    /session/new(.:format)    session#new
#        root GET    /                         posts#index
#       login GET    /login(.:format)          session#new
#             POST   /login(.:format)          session#create
#             DELETE /login(.:format)          session#destroy
#

Rails.application.routes.draw do
  resources :posts
  resources :users do
    get 'tweets' => 'users#tweets'
  end


  root :to => "session#new"

  get '/users/:id/tweets' => 'users#tweets'

  get '/signup' => 'users#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


end
