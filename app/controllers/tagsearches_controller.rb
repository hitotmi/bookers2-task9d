class TagsearchesController < ApplicationController
  def search
    @word = params[:word]
    @books = Book.where("tag LIKE?","%#{@word}%")
    redirect_to tagsearches_search_path
  end
end
