class BooksController < ApplicationController
  def index
    @books = Book.all.order("id DESC").page(1).per(8)
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
    flash[:notice]="Book was successfully created."
      redirect_to book_path(@book.id)
    else
      @books = Book.all.order("id DESC")
      render :index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    if book.save
      flash[:notice]="Book was successfully created."
    redirect_to book_path(params[:id])
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    if book.delete
      flash[:notice]="Book was successfully created."
      redirect_to '/books'
    end
  end

private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end