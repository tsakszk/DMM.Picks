class Category < ApplicationRecord
    has_many :articles, dependent: :destroy

    enum rate: {
         people: 1,
         culture: 2,
         other: 3
    }#カラム名   #定義対象の内容のマッピング(名前: 数値)

    #boolean型はpresence: trueにしてしまうと、falseを空だと認識して弾かれてしまうので以下のように記述。
    validates :categorys_flag, inclusion:{in: [true, false]}

end
