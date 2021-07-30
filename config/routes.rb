Rails.application.routes.draw do

  resources :feeds
  resources :contacts
  root to: 'pages#home'
  get '/salut(/:name)', to: 'pages#salut', as:'salut'

  resources :posts
  resources :blogs do
    collection do
      post :confirm
    end
  end

  resources :users, only: [:new, :create, :show]

  resources :sessions, only: [:new, :create, :destroy]

  resources :favorites, only: [:create, :destroy]

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if
  Rails.env.development?
end
