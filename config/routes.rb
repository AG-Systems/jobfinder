Rails.application.routes.draw do
  resources :connections
  resources :jobs do
  member do
    put "like", to: "jobs#upvote"
    put "dislike", to: "jobs#downvote"
    end
  end
  devise_for :users
  #resources :jobs
  root 'jobs#index'
  get 'new' => 'jobs#new'
  get '/ConnectionCreate', to: 'connection#create'
  get 'connections' => 'connection#index'
end
