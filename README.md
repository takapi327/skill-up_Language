# **Skill-up-Language**
Skill-up-Languageは日々の学習した内容を投稿して閲覧できます。
過去に書いた投稿も検索して調べることができます。

1.[機能](#機能)  
2.[デモ画像](#デモ画像)  
3.[開発環境](#開発環境)  
4.[DB設計](#DB設計)  
5.[今後の展開](#今後の展開)  
6.[製作者](#製作者)  
### *機能*
---
* ユーザー登録
* 記事を入力し保存する
* 「言語」ごとに該当する投稿を一覧表示
* 言語の一覧表示及
* 投稿の検索
* 画像の保存
<br>
### *デモ画像*
---
* *トップページ*
  * 投稿が一覧表示されています。

![582e8dea5dd95d4c93b1830a42254986](https://user-images.githubusercontent.com/57429437/75237928-9370a280-5803-11ea-958e-4a66c47335a5.jpg)
* *投稿機能*
  * タイトルと言語の種類、日付、学習時間を選択し、画像と記事を入力する。
  * 記事はマークダウンで表示可能。

<img width="1440" alt="a837957b3bc3f3d328cec18d8d90df3c" src="https://user-images.githubusercontent.com/57429437/75238133-daf72e80-5803-11ea-87b3-3f0afb665ef1.png">

* *言語ごとに一覧表示*
  * タブを切り替えて表示が可能。

![6af2d49f74ef7817c1860d67124557f7](https://user-images.githubusercontent.com/57429437/75239632-61ad0b00-5806-11ea-9d83-a946e83c3a36.jpg)

* *投稿をタイトルで検索可能*
  * 最新の投稿を3つ表示。

![e4d232c955ce38760fa0f9b442d71efa](https://user-images.githubusercontent.com/57429437/75239935-de3fe980-5806-11ea-8173-8348f670507b.jpg)

### *開発環境*
---
* Ruby 2.5.1
* Ruby on Rails 5.2.3
* データベース MySQL
* デプロイ AWS
<br>
### *DB設計*
---
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|mail|string|unique:true, null:false|
|password|string|null:false|
|re_password|string|null:false|

### Association

- has_many :languages

## languagesテーブル

|Column|Type|Options|
|------|----|-------|
|tittle|string|null:false|
|name_id|integer|null:false|
|day|date|null:false|
|study_id|integer|null:false|
|content|text|null:false|

### Association
- belongs_to :user
- has_many :images

## imagesテーブル

|Column|Type|Options|
|------|----|-------|
|language_id|references|null:false|
|image|text|null:false|

### Association

- belongs_to :language
<br>
### *今後の展開*
---
- [ ] 投稿の編集機能
- [ ] マイページにグラフを表示
- [ ] コメント機能
などを実装していきたいと思います。
<br>

### *製作者*
---

[@TakahikoTominaga](https://twitter.com/@takapi327)