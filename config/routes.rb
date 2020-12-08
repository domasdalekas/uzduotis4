# frozen_string_literal: true

Rails.application.routes.draw do
  get 'services/bikes'
  get 'services/gear'
  get 'services/services'
  get 'welcome/index'
  get 'services/:id/edit', to: 'services#edit', as: 'edit'
  get 'services/:id/delete', to: 'services#delete', as: 'delete'
  get 'welcome/registerScreen'
  post 'create', to: 'services#create'
  patch 'services/:id', to: 'services#update'
  post 'create', to: 'services#createUser'
  root 'welcome#registerScreen'
  post '/sessions' => 'sessions#create'
  post '/welcome' => 'welcome#create'
  get '/dashboard' => 'welcome#index'
  get '/edit_bikes' => 'services#gear'
end
