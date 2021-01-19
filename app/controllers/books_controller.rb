class BooksController < ApplicationController
    def index
      @books = Book.all
    end
    
    # in app/controllers/books_controller.rb

    def show
        id = params[:id] # retrieve book ID from URI route
        @book = Book.find(id) # look up book by unique ID
        # will render app/views/books/show.html.haml by default
    end

    # add to the books_controller.rb
    def new
        @book = Book.new
      # default: render 'new' template
    end

    # in books_controller.rb
    def create
        params.require(:book)
        permitted = params[:book].permit(:title,:genre,:description,:isbn_number,:publish_date)
        @book = Book.new(permitted)
        if @book.save
            flash[:notice] = "#{@book.title} was successfully created."
        redirect_to books_path
        else
            render 'new' # note, 'new' template can access @book's field values!
        end
    end

    def edit
        @book = Book.find params[:id]
    end
      
    def update
        @book = Book.find params[:id]
        params.require(:book)
        permitted = params[:book].permit(:title,:genre,:description,:isbn_number,:publish_date)
        if @book.update_attributes(permitted)
            flash[:notice] = "#{@book.title} was successfully updated."
            redirect_to book_path(@book)
        else
            render 'edit' # note, 'edit' template can access @book's field values!
        end
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        flash[:notice] = "Book '#{@book.title}' deleted."
        redirect_to books_path
    end
end