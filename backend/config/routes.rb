Rails.application.routes.draw do
  resources :userquizzes
  resources :questions
  resources :lessons
  resources :examples
  resources :vocabwords
  resources :japanesecopyparagraphs
  resources :howtomakes
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
  resources :users, only: [:index, :create]

  get '/userbyname/:name', to:'users#byname'
  post '/login', to:'users#login'
  
end
