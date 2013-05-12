Bookstore::Application.routes.draw do
  namespace :admin do
    root to: 'books#index'
  end
end