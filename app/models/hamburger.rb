class Hamburger < ApplicationRecord
    enum rate: {
        mypicks: 1,
        source: 2,
        setting: 3,
        about: 4,
        logout: 5
    }#カラム名   #定義対象の内容のマッピング(名前: 数値)

    #boolean型はpresence: trueにしてしまうと、falseを空だと認識して弾かれてしまうので以下のように記述。
	validates :hamburgers_flag, inclusion:{in: [true, false]}
end