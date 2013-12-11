Mansavers::Application.routes.draw do

  # Routes for the Gift resource:
  # CREATE
  post '/gifts', controller: 'gifts', action: 'index', as: 'gifts'

  # READ
  get '/gifts', controller: 'gifts', action: 'index'
  get '/gifts/:id', controller: 'gifts', action: 'show', as: 'gift'

  # UPDATE
  get '/gifts/:id/edit', controller: 'gifts', action: 'edit', as: 'edit_gift'
  patch '/gifts/:id', controller: 'gifts', action: 'update'

  # DELETE
  delete '/gifts/:id', controller: 'gifts', action: 'destroy'
  #------------------------------

  devise_for :users

  root 'pages#index'
   get '/options', controller: 'pages', action: 'options'
   get '/thanks', controller: 'pages', action: 'thanks'
  resources :users

  # Routes for the Recipient resource:
  # CREATE
  get '/recipients/new', controller: 'recipients', action: 'new', as: 'new_recipient'
  post '/recipients', controller: 'recipients', action: 'create', as: 'recipients'

  # READ
  get '/recipients', controller: 'recipients', action: 'index'
  get '/recipients/:id', controller: 'recipients', action: 'show', as: 'recipient'

  # UPDATE
  get '/recipients/:id/edit', controller: 'recipients', action: 'edit', as: 'edit_recipient'
  patch '/recipients/:id', controller: 'recipients', action: 'update'

  # DELETE
  delete '/recipients/:id', controller: 'recipients', action: 'destroy'

end
