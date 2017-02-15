Rails.application.routes.draw do
    resources :portfolios do
    resources :stocks  
    end
    resources :stocks 
    get '/' => 'session#home'

end
