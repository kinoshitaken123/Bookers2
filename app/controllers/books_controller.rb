class BooksController < ApplicationController
  
  def new
     @book = Books.new
  end

  def create
    @book = Books.new(books_params)
    @book = books.id
    @book.save
    redirect_to books_path
  end

  def index
  end

  def show
  end

  def destroy
  end
end
