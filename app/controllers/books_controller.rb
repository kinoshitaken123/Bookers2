class BooksController < ApplicationController

  def new
  @newbook = Book.new
  @book =Book.find(params[:id])
  @user =@book.user
  end

  def create
    @book = Book.new(books_params)
    @book_user_id =current_user.id
    @book.save
    redirect_to book_path(@book)
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def index
    @books = Book.all
    @book　 = Book.new
  end

  def show
  	@book = Book.find(params[:id])
  end

  def destroy
  end
  private

  def post_image_params
    params.require(:book).permit(:title, :body)
  end
end
