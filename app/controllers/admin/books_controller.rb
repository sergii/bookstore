class Admin::BooksController < ApplicationController
  http_basic_authenticate_with name: Settings.admin_name, password: Settings.admin_password

  def index
    @books = Book.all
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to admin_books_url, notice: 'Book was successfully deleted.'
  end
end