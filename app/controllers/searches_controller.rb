class SearchesController < ApplicationController
  def search
    if params[:search].present?  #Railsにおいてpresentメソッドはオブジェクトであるレシーバーの値が存在すればtrue、存在しなければfalseを返すメソッド。
      @books = Book.where(title: params[:search], body: params[:search])
    else
      @books = Book.all
    end
  end
end

