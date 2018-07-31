Rails.application.routes.draw do
  resources :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'user#new'
  get '/user/create', to: 'user#create'
end
