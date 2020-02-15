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
|address_building|string||
|address_city|string||
|address_number|string||
|area_id|reference|null: false, foreign_key:true|
|birthday|date|null: false|
|email|string|null: false, unique: true|
|encrypted_password|string|null: false|
|first_name|string|null: false|
|first_name_kana|string|null: false|
|last_name|string|null: false|
|last_name_kana|string|null: false|
|nickname|string|null: false, unique: true|
|postal_number|string||
|remember_created_at|datetime||
|reset_password_sent_at|datetime||
|reset_password_token|string|unique: true|
|self_image|string||
|self_introduction|text||
|telephone_number|string||

### Association
- belongs_to :area
- has_many   :items
- has_many   :creditcards
- has_many   :trades
- has_many   :shippings

## Itemテーブル
|Column|Type|Options|
|------|----|-------|
|bland_id|reference|null: false, foreign_key: true|
|category_child_id|reference|null: false, foreign_key: true|
|category_grandchild_id|reference|null: false, foreign_key: true|
|category_parent_id|reference|null: false, foreign_key: true|
|condition_num|integer|null: false, limit: 1, unsigned: true|
|daystoship_num|integer|null: false, limit: 1, unsigned: true|
|description|text|null: false|
|feerate|decimal|null: false, precision: 4, scale: 3|
|price|decimal|null: false, precision: 10, scale: 3|
|profit_price|desimal|null: false, precision: 10, scale: 3|
|shippingcharge_num|integer|null: false, limit: 1, unsigned: true|
|shippingway_id|references|null: false, foreign_key: true|
|size_num|integer|null: false, limit: 1, unsigned: true|
|sold_at|datetime||
|title|string|null: false|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to    :user
- belongs_to    :shippingway
- belongs_to    :bland
- belongs_to    :category_parent
- belongs_to    :category_child
- belongs_to    :category_grandchild
- belongs_to    :shipping

- has_many      :itemimages
- has_one       :trade

## Areaテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :users
- has_many :shippings


## Creditcardテーブル
|Column|Type|Options|
|------|----|-------|
|customer|string|null: false|
|pay_token|string|null: false|
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user


## Itemimageテーブル
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
- has_many :shippings

## Blandテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :items

## Tradeテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|reference|null: false, foreign_key: true|
|status_num|integer|null: false, limit: 1, unsigned: true|
|item_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_one    :item

## Shippingテーブル
|Column|Type|Options|
|------|----|-------|
|address_building|string|null: false|
|address_city|string|null: false|
|address_number|string|null: false|
|area_id|reference|null: false, foreign_key: true|
|first_name|string|null: false|
|first_name_kana|string|null: false|
|last_name|string|null: false|
|last_name_kana|string|null: false|
|postal_number|string|null: false|
|shippingway_id|reference|null: false, foreign_key: true|
|status_num|integer|null: false, limit: 1, unsigned: true|
|telephone_number|string|null: false|
|user_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :area
- belongs_to :shippingway
- belongs_to :user
- belongs_to :item

## CatetgoryParentテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|

### Association
- has_many :items
- has_many :CatetgoryChildren

## CatetgoryChildテーブル
|Column|Type|Options|
|------|----|-------|
|category_parents_id|reference|null: false, foreign_key: true|
|name|string|null:false|

### Association
- has_many :items
- belongs_to :CatetgoryParent
- has_many :CatetgoryGrandchildren

## CatetgoryGrandchildテーブル
|Column|Type|Options|
|------|----|-------|
|category_children_id|reference|null: false, foreign_key: true|
|name|string|null:false|

### Association
- has_many :items
- belongs_to :Catetgory_Child