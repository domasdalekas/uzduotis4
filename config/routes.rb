Rails.application.routes.draw do
  get 'services/bikes'
  get 'services/gear'
  get 'services/services'
  get 'welcome/index'
  root 'welcome#index'
end
