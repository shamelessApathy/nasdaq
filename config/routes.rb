Rails.application.routes.draw do
  resources :sectors
    # RESOURCES
    resources :portfolios do
    resources :stocks  
    end
    resources :stocks 

    # GET ROUTES
    get '/' => 'session#home'
  	get 'logged_out' => "session#logged_out"
    get '/login' => 'session#login' 
    get 'users/new'
    get 'users/create'
    get 'logout' => "session#logout"
    get 'stock/stock_quote' => 'stocks#stock_quote'

    # POST ROUTES
    post 'session/login_attempt' => 'session#login_attempt'
    post '/login' => 'session#login' 
    post 'users/create'

end
