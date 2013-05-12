Bookstore::Application.routes.draw do
  namespace :admin do
    root to: 'books#index'
    resources :books, only: [:index, :destroy]
  end
end