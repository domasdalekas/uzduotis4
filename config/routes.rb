Rails.application.routes.draw do
  get 'services/bikes'
  get 'services/gear'
  get 'services/services'
  get 'welcome/index'
  get 'services/:id/edit', :to => 'services#edit', :as => 'edit'
  get 'services/:id/delete', :to => 'services#delete', :as => 'delete'
  post 'create', to: 'services#create'
  patch 'services/:id',:to =>'services#update'
  root 'welcome#index'
end
