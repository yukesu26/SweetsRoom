 # アプリケーション名
## Sweets_Room

# 概要
洋菓子のレシピ投稿、写真の投稿、日記感覚で利用する  メモアプリケーションです。
会員登録後にレシピ、写真を投稿することができます。会員であれば  投稿、編集、削除が可能で他のユーザーの情報も閲覧することができます。
 
# 目指した課題解決
アプリ操作が苦手な高齢者の方が、お菓子作りの幅を広げることができるようなアプリを作りました。
# 実装した機能についてのGIFと説明

## トップページ
投稿された画像をトップページでも一覧表示させました。
## ![6894a9492a4f28b6de10601e792d195d](https://user-images.githubusercontent.com/75784020/112808290-cb57b280-90b3-11eb-8841-045bf8fa5251.jpeg)

## 一覧ページ
一覧ページにはページネーション機能が実装されています。画像６枚以上になった場合に次ページに遷移できます。
## https://user-images.githubusercontent.com/75784020/112813142-db25c580-90b8-11eb-9a0c-6502c23646cc.mp4

## ユーザーページ
投稿者本人であれば編集、削除が可能です。
## ![c8aad4e8fb6e836e376f26dbce48a2b3](https://user-images.githubusercontent.com/75784020/112811645-3ce53000-90b7-11eb-99ee-e54af63e617f.jpeg)


# 実装予定の機能
* レシピ検索機能 
* コメント機能

 # テーブル設計

 ## users テーブル
| Column             | Type   | Options                   |
| ----------------   | ------ | ------------------------- |
| user_name          | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| profile_image_id   | string | null: false               |
| profile            | text   | null: false               |
 
### Association
- has_many :recettes


## recettes テーブル

| Column      | Type   | Options        |
| ------------| ------ | ---------------|
| user_id     | integer| null: false    |
| title       | string | null: false,   |
| image_id    | string | null: false    |
| memo        | text   | null: false    |
 
### Association
- belongs_to :user

## ![ER図 recette](https://user-images.githubusercontent.com/75784020/106712405-3f3d8780-663c-11eb-96ff-03cdfb9560bc.png)

# ローカルでの動作方法
* % git clone git@github.com:yukesu26/recette-sweets.git
* % cd recette-sweets
* % bundle install
* % yarn install
* % rails db:create
* % rails db:migrate
* % rails s
* % http://localhost:3000/

# 仕様したGem
* devise
* bulma-rails
* refile
* refile-mini_magick
* kaminari

# ruby-version
2.6.5
# rails-version
6.0.3.4