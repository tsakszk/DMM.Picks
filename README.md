XTC
## サイト概要
本の投稿サイト

### サイトテーマ
AIを活用して記事やコメントに対して信憑度チェックや、ポジティブ・ネガティブの判定をしたいと思っております。

# 実装機能

| 項目 | 機能名 | API/GEM/ライブラリ | 概要 |
|---|---|---|---|
|HTML/CSS|Bootstrap|CSSフレームワーク|レイアウトを整える、deviceとModalを組み合わせたログイン機能で利用|
|HTML/CSS|Flexbox|CSSレイアウト|CSSで行う要素の配置を短いコードで柔軟に行う|
|HTML/CSS|SCSS|---|ネストによる記述で記述量を減らす|
|Ruby on Rails|テスト（単体/正常・異常）|Rspec|モデルの単体テスト, 結合テストをRSpecで実装予定|
|Ruby on Rails|CRUD処理|---|記事に対してcreate、read、update、deleteの処理を行う|
|Ruby on Rails|ランキング|---|記事に対してcreate、read、update、deleteの処理を行う|
|Ruby on Rails|ユーザーログイン、ログアウト、Modal|devise|ログイン機能で利用（deviceとModalを組み合わせる|
|Ruby on Rails|検索機能|Ransack|ヘッダーで利用、記事やユーザーを対象に検索|
|Ruby on Rails|いいね機能|---|記事とUserへのいいね機能の実装、記事をピックアップする機能の実装|
|Ruby on Rails|画像アップロード|refile,refile-minimagick|マイページでのプロフィール画像投稿機能の実装、記事投稿にて画像投稿機能（フリー素材）|
|Ruby on Rails|コメント投稿機能|---|記事へのコメント機能|
|Ruby on Rails|記事投稿/編集/削除機能|---|Userが記事（URL??）を投稿できる|
|Ruby on Rails|画像スライダー|bxslider-rails|一面記事をピックアップし実装|
|Javascript|ハンバーガーメニュー|---|ヘッダーで利用、よく使われるであろう機能へのリンク|
|その他|デプロイ|AWS EC2,Github|ヘッダーで利用、よく使われるであろう機能へのリンク|
|その他|README|マークダウン記法|---|
|Pyhton|Natural Language|---|記事の文面からポジティブなのか、ネガティブなのかをチェックする。ファクトチェック（信憑度チェック）を行う。また、禁止用語などを指定し引っかかる場合は投稿出来ないようにする。|

### テーマを選んだ理由
・習得してきた技術にプラスαの技術でチャレンジできるようなサービスを作成するため

### ターゲットユーザ
・全年齢対象

### 主な利用シーン
・日夜問わず隙間時間・個々人によるため特になし

## 設計書

### 機能一覧
<https://docs.google.com/spreadsheets/d/1oEf6q-z28zhXg25ljzH_-IjCKR072xQOzE0KN8TYh28/edit#gid=1327224690>
