Rails.application.routes.draw do
  resources :stays
  get 'blog/index'
  get 'blog/get-started'
  get 'blog/what-is'
  get 'blog/future-of'
  resources :contact_us
  get 'blog/1'
  get 'blog/2'
  get 'blog/3'
  get 'blog/4'
  get 'blog/5'
  get 'blog/6'
  get 'blog/7'
  get 'blog/8'
  get 'blog/9'
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
