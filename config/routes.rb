Rails.application.routes.draw do
  get '/dashboard', to:'users#dashboard' # das ist das dashboard_path
  post '/users/edit', to:'users#update'
  root 'pages#home'

  devise_for :users, 
              path:'', 
              path_name: {sing_up: 'register', sign_in: 'login', edit: 'profile', sign_out: 'logout'},
              controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
