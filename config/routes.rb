Rails.application.routes.draw do
    # RESOURCES
    resources :portfolios do
    resources :trades
    end
    resources :trades


    # GET ROUTES
    get '/' => 'session#home'
  	get 'logged_out' => "session#logged_out"
    get '/login' => 'session#login' 
    get 'users/new'
    get 'users/create'
    get 'logout' => "session#logout"
    get 'stock/stock_quote' => 'stocks#stock_quote'
    get 'portfolios/:portfolio_id/trades/new' => 'trades#new'
    get 'trades/:ticker/test' => 'trades#test'

    # POST ROUTES
    post 'session/login_attempt' => 'session#login_attempt'
    post '/login' => 'session#login' 
    post 'users/create'

end
