class About < ApplicationRecord
    has_many :users, dependent: :destroy

    enum rate: {
        unanswered: 1,
        answering: 2,
        answered: 3
    }#カラム名   #定義対象の内容のマッピング(名前: 数値)

end