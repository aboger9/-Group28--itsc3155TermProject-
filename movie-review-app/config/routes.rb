Rails.application.routes.draw do
  get 'welcome/index'
  
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get    '/help',    to: 'sessions#help'
  
  resources :users do
    resources :reviews
  end
  
  resources :movies do
    resources :reviews
  end
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
