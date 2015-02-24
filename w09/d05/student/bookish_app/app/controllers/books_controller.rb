class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by(id: params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.create book_params
    redirect_to book_path(book)
  end

  def destroy
    Book.destroy params[:id]
    redirect_to books_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update book_params
    redirect_to book_path(book)
  end

  private

  def book_params
    params.require(:book).permit(
      :title,
      :released_on,
      :genre
    )
  end

end
