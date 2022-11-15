Rails.application.routes.draw do
  resources :questions
  resources :lessons
  resources :examples
  resources :vocabwords
  resources :japanesecopyparagraphs
  resources :japanesesections
  resources :screenshots
  resources :paragraphs
  resources :otherpics
  resources :covers
  resources :releases
  resources :gamesections
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :gamesections, only: [:index]
  resources :releases, only: [:index]
  resources :japanesesections, only: [:index]
  resources :lessons, only: [:index, :show]
  resources :quizzes, only: [:index, :show]
  resources :users, only: [:index, :show, :create, :update]
  resources :userquizzes, only: [:update, :create]


  get '/userbyname/:name', to:'users#byname'
  get '/getme/', to: 'users#getme'
  get 'userquiz/:userid/:quizid', to:'userquizzes#userandquiz'
  post '/login', to:'users#login'
  
end
