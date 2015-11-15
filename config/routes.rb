Rails.application.routes.draw do
  resources :sources
  resources :posts, only: :index do
    get :go, on: :member
  end
  root to: 'posts#index'
end
