Rails.application.routes.draw do
  get 'search', to: 'search#index'
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
  
  # resources :articles, only: [:show, :index, :new, :create, :edit, :update]

  #get 'articles', to: 'articles#show_article'

  #at some point, figure out why the above code did not work
  #it seems to follow all of the correct formatting
  #and when I show routes in terminal, it is recognized
  #but following the URI in the browser leads to an error
  #stating 'No route matches [GET] "/articles/14"'
  #however, path is '/articles(.:format)'
  #and controller action is 'articles#show_article'
end