HackerNewsClone::Application.routes.draw do
  resources :users
  resources :posts
  resources :save_stories
  resources :comments
  resources :comment_votes
  resource :session
  resources :post_votes

  root :to => 'posts#index'

  match '/comment_upvote', to: 'comment_votes#create'
  match '/login',    to: 'sessions#new'
  match '/logout',   to: 'sessions#destroy'
  match '/register', to: 'users#new'
end
