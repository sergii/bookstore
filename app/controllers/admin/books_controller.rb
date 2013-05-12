class Admin::BooksController < ApplicationController
  http_basic_authenticate_with name: Settings.admin_name, password: Settings.admin_password

  def index
    @books = Book.all
  end
end