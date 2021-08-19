Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists do
    member do
      get 'bookmarks/new', to: 'bookmarks#new'
      post 'bookmarks', to: 'bookmarks#create'
    end
  end
end
