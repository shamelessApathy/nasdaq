Rails.application.routes.draw do
  resources :sectors
    # RESOURCES
    resources :portfolios
    resources :stocks 
    resources :portfolio_stocks
    # GET ROUTES
    get '/' => 'session#home'
  	get 'logged_out' => "session#logged_out"
    get '/login' => 'session#login' 
    get 'users/new'
    get 'users/create'
    get 'logout' => "session#logout"
    get 'stock/stock_quote' => 'stocks#stock_quote'
    get '/portfolios/:portfolio_id/add_stock' => 'portfolio_stocks#add_stock'
    get "portfolio_stocks" => "portfolio_stocks#index"


    # POST ROUTES
    post 'session/login_attempt' => 'session#login_attempt'
    post '/login' => 'session#login' 
    post 'users/create'

end
