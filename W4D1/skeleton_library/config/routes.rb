Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'books', to: 'books#index'
  # post 'books', to: 'books#create'
  # get 'books/new', to: 'books#new'
  # delete 'books/:id', to: 'books#destroy'


  resources :books, only: [:new, :create, :index, :destroy]


end
