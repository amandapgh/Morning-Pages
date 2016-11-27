Rails.application.routes.draw do

  root 'pages#index'
  get '/new' => 'pages#new'

  resources :pages

end
