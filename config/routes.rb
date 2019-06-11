Rails.application.routes.draw do
  #get 'home/index'
  root 'home#index'

  get '/about' => 'home#about'

  post '/questions' => 'home#temp'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
