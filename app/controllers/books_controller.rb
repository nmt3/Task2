class BooksController < ApplicationController
  def new
    @books = Book.new
  end
  
  def index
    @books = Book.all
  end  
  
  def create
    @books = Book.new(book_params)
    if @book.save
      ridirect_to book_path(@book.id)
    else
      @books = Book.all
      render.index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params:[id])
  end

  private 
  def book_params
  params.require(:book).permit(:title,:body)
  end
end