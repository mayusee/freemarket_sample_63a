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


## Userテーブル
|Column|Type|Options|
|------|----|-------|
|birthday|date|null: false|
|email|string|null: false, index: true, unique: true|
|encrypted_password|string|null: false|
|first_name|string|null: false|
|first_name_kana|string|null: false|
|last_name|string|null: false|
|last_name_kana|string|null: false|
|nickname|string|null: false, index: true, unique: true|
|remember_created_at|datetime||
|reset_password_sent_at|datetime||
|reset_password_token|string|index: true, unique: true|
|self_image|string||
|self_introduction|text||
|telephone_number|string||

### Association
- has_many   :items
- has_many   :creditcards
- has_many   :shippings
- has_many   :addresses

## Itemテーブル
|Column|Type|Options|
|------|----|-------|
|brand_id|reference|null: false, foreign_key: true|
|category_id|reference|null: false, foreign_key: true|
|condition_num|integer|null: false, limit: 1, unsigned: true, index: true|
|daystoship_num|integer|null: false, limit: 1, unsigned: true, index: true|
|description|text|null: false|
|feerate|decimal|null: false, precision: 4, scale: 3|
|price|decimal|null: false, precision: 10, scale: 3|
|profit_price|desimal|null: false, precision: 10, scale: 3|
|shippingcharge_num|integer|null: false, limit: 1, unsigned: true, index: true|
|shippingway_id|references|null: false, foreign_key: true|
|size_num|integer|null: false, limit: 1, unsigned: true, index: true|
|sold_at|datetime||
|title|string|null: false, index: true|
|seller_id|references|null: false, foreign_key: { to_table: 'users' }|
|status_num|integer|null: false, limit: 1, unsigned: true|
|buyer_id|reference|foreign_key: { to_table: 'users' }|

### Association
- belongs_to    :brand
- belongs_to    :category
- belongs_to    :shippingway
- belongs_to    :user

- has_many      :item_images

- has_one       :shipping

## Areaテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :addresses


## Creditcardテーブル
|Column|Type|Options|
|------|----|-------|
|customer|string|null: false|
|pay_token|string|null: false|
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user

## Item_imageテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|item_id|references|null: false, foreign_key: true|

### Association
- belongs_to :item

## Shippingwayテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|status_num|integer|null: false, limit: 1, unsigned: true|

### Association
- has_many :items

## Brandテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|

### Association
- has_many :items

## Shippingテーブル
|Column|Type|Options|
|------|----|-------|
|address_id|reference|null: false, foreign_key: true|
|item_id|reference|null: false, foreign_key: true|
|user_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :address
- belongs_to :user
- belongs_to :item

## Catetgoryテーブル
|Column|Type|Options|
|------|----|-------|
|ancestry|string||
|name|string|null:false, index: true|

### Association
- has_many :items
- has_ancestry

## Addressテーブル
|Column|Type|Options|
|------|----|-------|
|building|string|null: false|
|city|string|null: false|
|number|string|null: false|
|area_id|reference|null: false, foreign_key: true|
|postal_number|string|null: false|
|status_num|integer|null: false, limit: 1, unsigned: true|
|telephone_number|string|null: false|
|user_id|reference|null: false, foreign_key: true|
### Association
- belongs_to  :area
- belongs_to  :user

- has_many    :shippings