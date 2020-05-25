class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :about
  has_many :articles, dependent: :destroy

  enum rate: {
       men: 1,
       women: 2
  }#カラム名   #定義対象の内容のマッピング(名前: 数値)
end
