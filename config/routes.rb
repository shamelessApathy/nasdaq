Rails.application.routes.draw do
  resources :stocks
  resources :portfolios
  get 'users/new'
  get '/' => 'session#home'
  post 'users/create' => 'users#create'
  get 'users/create' => 'users#create'
  get 'users' => 'users#index'
  get 'portfolio' => 'portfolios#index'
  get 'login' => 'session#login'
  post 'session/login_attempt' => 'session#login_attempt'
  post "portfolios/create" => 'portfolios#create'
  #post ':controller(/:action(/:id))(.:format)'
  #get ':controller(/:action(/:id))(.:format)'
  get 'logout' => "session#logout"
  get 'logged_out' => "session#logged_out"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
