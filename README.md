# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

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
|name|string|null:false|

### Association
- belongs_to :user
- has_one :study
- has_many :images

## studiesテーブル

|Column|Type|Options|
|------|----|-------|
|language_id|references|null:false|
|day|data|null:false|
|time|integer|null:false|
|context|text|null:false|

### Association

- belongs_to :language

## imagesテーブル

|Column|Type|Options|
|------|----|-------|
|language_id|references|null:false|
|image|text|null:false|

### Association

- belongs_to :language