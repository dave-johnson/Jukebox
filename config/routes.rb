Rails.application.routes.draw do
  
  get 'home/index'
  get '/about' => 'home#about'

  get '/albums' => 'albums#all'

  resources :artists do
    resources :albums
  end
  
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
