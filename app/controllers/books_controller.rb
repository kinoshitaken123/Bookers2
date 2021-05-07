class BooksController < ApplicationController

  def new
     @book = Book.new
  end

  def create
    @book = Book.all
    @book = book.(books_params)
    @book.save
    redirect_to book_path(@book)
  end

  def index
  end

  def show
  end

  def destroy
  end
  private

  def post_image_params
    params.require(:book).permit(:title, :body)
  end
end
