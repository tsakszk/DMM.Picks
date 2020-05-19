XTC
## サイト概要
「XTC」とはecstasyをもじったもの。

奇妙にも見えるし、羨ましくも見えるそんな人たちや記事を集めたサイトです。

冒険家、ジャーナリスト、写真家、作家、登山家、経営者など、さまざまな職業や活動を記事として取り上げる。

XTCの「X」に因んで、ecstasy、explorer、expoldeなどなど、e（X）で始まるkeywordをX（10）個に絞ってお届け。

### サイトテーマ
RSSリーダーを活用した記事コンテンツ

コメント投稿やいいね機能、記事の保存機能をつける事で、ユーザーの関心や関わりを1→10に広げていく事をテーマにしました。

AIを活用して記事やコメントに対して信憑度チェックや、ポジティブ・ネガティブの判定をしたいと思っております。

# 実装機能

| 項目 | 機能名 | API/GEM/ライブラリ | 概要 |
|---|---|---|---|
|HTML/CSS|Bootstrap|CSSフレームワーク|レイアウトを整える、deviceとModalを組み合わせたログイン機能で利用|
|HTML/CSS|Flexbox|CSSレイアウト|CSSで行う要素の配置を短いコードで柔軟に行う|
|HTML/CSS|SCSS|---|ネストによる記述で記述量を減らす|
|Ruby on Rails|コードフォーマット|Rubocop（-airbnb）|書かれたコードがRubyのコーディング規約に沿った書かれ方をしているかを自動的に確認してくれる|
|Ruby on Rails|デバッグ|pry-byebug,pry-rails,pry-doc,byebug|デバッグ機能の知識がないため、途中で変更も視野に入れる|
|Ruby on Rails|テスト（単体/正常・異常）|Rspec|モデルの単体テスト, 結合テストをRSpecで実装予定|
|Ruby on Rails|CRUD処理|---|記事に対してcreate、read、update、deleteの処理を行う|
|Ruby on Rails|バッチ処理|Whenever| 1時間ごとに最新の記事を表示させる,スクレイピングするタイミングを決める|
|Ruby on Rails|ランキング|---|記事に対してcreate、read、update、deleteの処理を行う|
|Ruby on Rails|ユーザーログイン、ログアウト、Modal|devise|ログイン機能で利用（deviceとModalを組み合わせる|
|Ruby on Rails|検索機能|Ransack|ヘッダーで利用、記事やユーザーを対象に検索|
|Ruby on Rails|いいね機能、ピックアップ機能|---|記事とUserへのいいね機能の実装、記事をピックアップする機能の実装|
|Ruby on Rails|画像アップロード|refile,refile-minimagick|マイページでのプロフィール画像投稿機能の実装、記事投稿にて画像投稿機能（フリー素材）|
|Ruby on Rails|コメント投稿機能|---|記事へのコメント機能|
|Ruby on Rails|記事投稿/編集/削除機能|---|Userが記事（URL??）を投稿できる|
|Ruby on Rails|スクレイピング|Nokogiri,（Mechanize調査中）|記事を引っ張ってくる|
|Ruby on Rails|画像スライダー|bxslider-rails|一面記事をピックアップし実装|
|Javascript|ハンバーガーメニュー|---|ヘッダーで利用、よく使われるであろう機能へのリンク|
|その他|デプロイ|AWS EC2,Github|ヘッダーで利用、よく使われるであろう機能へのリンク|
|その他|README|マークダウン記法|---|
|Pyhton|Natural Language|---|記事の文面からポジティブなのか、ネガティブなのかをチェックする。ファクトチェック（信憑度チェック）を行う。また、禁止用語などを指定し引っかかる場合は投稿出来ないようにする。|


### テーマを選んだ理由
・興味がある分野

・習得してきた技術にプラスαの技術でチャレンジできるような、見本のようなサービスであったため。

### ターゲットユーザ
・全年齢対象・濃縮還元された有益な情報収集をしたい方

### 主な利用シーン
・日夜問わず隙間時間・個々人によるため特になし

## 設計書

### 機能一覧
<https://docs.google.com/spreadsheets/d/1oEf6q-z28zhXg25ljzH_-IjCKR072xQOzE0KN8TYh28/edit#gid=1327224690>