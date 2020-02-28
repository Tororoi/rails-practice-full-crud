class BooksController < ApplicationController

    def index
        @books = Book.all
    end

    def show
        @book = Book.find(params[:id])
        @authors = Author.all
        @author_books = @book.author_books
        @author_book = AuthorBook.new
    end
end
