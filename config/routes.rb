Rails.application.routes.draw do
  
  resources :books
  
  get 'my/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => 'hello#index'

  get '/person' => 'person#index'
  get '/person/new' => 'person#new'
  post '/person' => 'person#create'

  resources :person
  resources :hello

end
