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


# アプリケーション名
recette_sweets
# 概要
洋菓子のレシピ投稿、写真の投稿、日記感覚で利用する  メモアプリケーションです。
# 利用方法
会員登録後にレシピ、写真を投稿すことができ、会員であればいつでも  投稿、編集、削除が可能で他のユーザーの情報も閲覧することができます。
# 目指した課題解決
アプリケーションの操作に苦手な人でも簡単で手軽に扱えるように  シンプルさにこだわりました。
# 実装した機能についてのGIFと説明

# 実装予定の機能
レシピ検索機能
器具一覧機能
# ![ER図 recette](https://user-images.githubusercontent.com/75784020/106712405-3f3d8780-663c-11eb-96ff-03cdfb9560bc.png)

# ローカルでの動作方法
