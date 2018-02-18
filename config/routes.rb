PostitTemplate::Application.routes.draw do
  get "comments/create"
  root to: 'posts#index'

  resources :posts, except: [:destroy] do
    resources :comments, only: [:create]
  end

  resources :categories, only: [:new, :create, :show]
end
