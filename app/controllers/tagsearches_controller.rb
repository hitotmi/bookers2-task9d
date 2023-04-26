class TagsearchesController < ApplicationController
  def search
    @word = params[:word]
    @books = Book.where("tag LIKE?","%#{@word}%")
  end
end
