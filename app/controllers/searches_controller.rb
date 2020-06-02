class SearchesController < ApplicationController
  def search
    if params[:search].present?  #Railsにおいてpresentメソッドはオブジェクトであるレシーバーの値が存在すればtrue、存在しなければfalseを返すメソッド。
      # userに対しての検索かpostに対しての検索
      if params[:option1] == '1'
        if params[:option2] == '1'
          @users = User.where(name: params[:search]) #完全一致
        elsif params[:option2] == '2'
          @users = User.where(['name LIKE ?', "#{params[:search]}%"]) #前方一致
        elsif params[:option2] == '3'
          @users = User.where(['name LIKE ?', "%#{params[:search]}"]) #後方一致
        else
          @users = User.where(['name LIKE ?', "%#{params[:search]}%"]) #部分一致
        end
      else
        # postに対しての検索
        # モデルクラス.where( "列名 LIKE ? AND 列名 LIKE ? ", "条件1", "条件2")
        # 適切なオブジェクト名.where(['検索したいカラム名 ? OR 検索したいカラム名 LIKE ? OR 検索したいカラム名 LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
      params[:option1] == '2'
        if params[:option2] == '1'
          @books = Book.where(title: params[:search],body: params[:search]) #完全一致
        elsif params[:option2] == '2'
          @books = Book.where(['title LIKE ? AND body LIKE ?', "#{params[:search]}%","#{params[:search]}%"]) #前方一致
        elsif params[:option2] == '3'
          @books = Book.where(['title LIKE ? AND body LIKE ?', "%#{params[:search]}","#{params[:search]}%"]) #後方一致
        else
          @books = Book.where(['title LIKE ? AND body LIKE ?', "%#{params[:search]}%","#{params[:search]}%"]) #部分一致
        end
      end
    else
      @books = Book.all
    end
  end
end