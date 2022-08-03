Rails.application.routes.draw do
  root "articles#index"

  namespace :api do
    namespace :v1 do
      resources :articles, param: :slug
      resources :reviews, only: [:create, :destroy]
    end
  end

  get '*path', to: 'pages#index', via: :all
end
