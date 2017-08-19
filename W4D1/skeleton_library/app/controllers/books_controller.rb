class BooksController < ApplicationController
  def index
    # your code here
    @books = Book.all
  end

  def new
    # your code here
    new_book_url
  end

  def create
    # your code here
    book = Book.new(book_params)
    if book.save
      redirect_to action: "index"
    else
      render json: book.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    # your code here
    Book.delete(params[:id])
    redirect_to action: "index"
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
