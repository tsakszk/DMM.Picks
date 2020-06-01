class SearchesController < ApplicationController
  def search
    if params[:search].present?
      @books = Book.where(title: params[:search])
    else
      @books = Book.all
    end
  end
end
