Rails.application.routes.draw do
  get 'admin/index'
  get 'admin/dashboard'
  devise_for :administrators
  get 'contact/new'
  get 'contact/create'
  get 'contact/index'
  get 'loop/new'
  get 'loop/create'
  get 'loop/index'
  get 'blog/what'
  get 'blog/how'
  get 'blog/future'
  resources :loops, only: [:new, :create]
 
  resources :blogs
  resources :surveys
  get 'base/home'
  get 'base/about'
  get 'base/contact'
  get 'base/play'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
   root "base#home"
end
