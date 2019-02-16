class NotesController < ApplicationController
  before_action :set_book, only: [:create, :destroy]

  def create
    if @book.notes.create(note_params)
      redirect_to @book, notice: "Note successfully created!"
    else
      redirect_to @book, alert: "Note was not created!"
    end
  end

  def destroy
    @note = @book.notes.find(params[:id])
    @note.destroy
    redirect_to @book, notice; "Note deleted!"
  end

  private
    def set_book
      @book = Book.find(params[:book_id])
    end

    def note_params
      params.require(:note).permit(:title, :content)
    end
end
