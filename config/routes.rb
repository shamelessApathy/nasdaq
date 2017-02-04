Rails.application.routes.draw do
  get 'users/new'
  post 'users/create' => 'users#create'
  get 'users/create' => 'users#create'
  get 'users' => 'users#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
