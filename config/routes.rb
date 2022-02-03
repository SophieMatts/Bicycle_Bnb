Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

 
  root 'pages#home'


  resources :bikes, only: [ :index, :show ] do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, except: [ :new, :create ]

end
