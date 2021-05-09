class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book_user_id = current_user.id
    @book.save
    redirect_to book_path(@book)
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
  	@newbook = Book.new
    @book = Book.find(params[:id])
    @user = @book.user
  end

  def update
    @book = Book.find(params[:id])
  end

  def destroy
  end


  private
  def book_params
   params.require(:book).permit(:title, :body)
  end
end
