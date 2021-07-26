Rails.application.routes.draw do

  #get '/blogs', to: 'blogs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
  get '/salut(/:name)', to: 'pages#salut', as:'salut'

  resources :posts
  resources :blogs do
    collection do
      post :confirm
    end
  end

end
