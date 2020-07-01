class SearchesController < ApplicationController
  def search
    if params[:search].present?
      if params[:option1] == '1'
        if params[:option2] == '1'
          @users = User.where(name: params[:search]) # 完全一致
        elsif params[:option2] == '2'
          @users = User.where(['name LIKE ?', "#{params[:search]}%"]) # 前方一致
        elsif params[:option2] == '3'
          @users = User.where(['name LIKE ?', "%#{params[:search]}"]) # 後方一致
        else
          @users = User.where(['name LIKE ?', "%#{params[:search]}%"]) # 部分一致
        end
      else
        if params[:option2] == '1'
          @books = Book.where('body = ? OR title = ? ', params[:search], params[:search]) # 完全一致
        elsif params[:option2] == '2'
          @books = Book.where(['title LIKE ? AND body LIKE ?', "#{params[:search]}%", "#{params[:search]}%"]) # 前方一致
        elsif params[:option2] == '3'
          @books = Book.where(['title LIKE ? AND body LIKE ?', "%#{params[:search]}", "#{params[:search]}%"]) # 後方一致
        else
          @books = Book.where(['title LIKE ? AND body LIKE ?', "%#{params[:search]}%", "#{params[:search]}%"]) # 部分一致
        end
      end
    else
      @books = Book.all
    end
  end
end
