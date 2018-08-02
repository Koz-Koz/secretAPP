Rails.application.routes.draw do
 
     get '/', to: 'static_pages#index'
     resources :static_pages

     resources :users
     get '/signup', to:'users#new' # lien vers sign up new user
     get '/user', to: 'users#user'

     get    '/login',   to: 'sessions#new'
     get '/login_error'=> 'sessions#error', as: 'error' # renvoit page erreur pour login erroné
	 resources :sessions

	 post   '/login',   to: 'sessions#create' 
	 delete '/logout',  to: 'sessions#destroy'


   # get 'users/new'
   # get 'users/create'
   # get 'users/for'
   # get 'users/for_create'
   # get 'users/error'
   # get 'users/destroy'	 
   # get 'sessions/create'
   # get 'sessions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
