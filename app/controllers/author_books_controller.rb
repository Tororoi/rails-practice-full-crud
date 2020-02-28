class AuthorBooksController < ApplicationController

    def create
        @author_book = AuthorBook.create(params.require(:author_book).permit(:author_id, :book_id))
        redirect_to @author_book.book
    end

    def destroy
        @author_book = AuthorBook.find(params[:id])
        @author_book.destroy
        redirect_to book_path(@author_book.book)
    end
end
