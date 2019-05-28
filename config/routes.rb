Rails.application.routes.draw do
  root 'welcome#index'
  
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'

  resources :documents
  resources :folders
  resources :states, except: [:create, :update, :destroy, :new, :edit]
  resources :people
  resources :tags
end
