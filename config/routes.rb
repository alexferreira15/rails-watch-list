Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :lists, only: [:index, :show, :new, :create] do
    member do
      # get 'bookmarks/new', to: 'bookmarks#new'
      # post 'bookmarks', to: 'bookmarks#create'
      # delete 'bookmarks/:id', to: 'bookmarks#destroy'
      resources :bookmarks, only: [:new, :create, :destroy]
    end
  end
end
