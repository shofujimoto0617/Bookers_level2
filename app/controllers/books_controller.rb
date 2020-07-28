class BooksController < ApplicationController

  def index
  end

  def new
  	@book = Book.new
  end

  def create
  	@book = Book.new(book_params)
  	# @book.user_id = current_user.id
  	@book.save
  	redirect_to new_books_path
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def book_params
  	params.require(:book).permit(:title, :body)
  end
  
end
