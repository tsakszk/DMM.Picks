class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit]
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def index
    @user = current_user
    @book = Book.new
    @users = User.all.page(params[:page]).per(7).order(created_at: :desc) #:asc古い :desc新しい
    @all_user_ranks = User.find(Favorite.group(:user_id).order('count(user_id) desc').limit(5).pluck(:user_id))
    @all_book_ranks = Book.find(Favorite.group(:book_id).order('count(book_id) desc').limit(5).pluck(:book_id))
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "successfully updated user!"
    else
      render :edit
    end
  end

  def follows
    @users = User.all
  end

  def followers
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

  def baria_user
    unless params[:id].to_i == current_user.id
      redirect_to user_path(current_user)
    end
  end

  def correct_user
    user = User.find(params[:id])
    if user != current_user
      redirect_to user_path(current_user)
      flash[:notice] = "error"
    end
  end
end
