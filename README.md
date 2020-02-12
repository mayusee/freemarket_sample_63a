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
|area_id|reference|null: false, foreign_key;true|
|birthday|date|null: false|
|email|string|null: false|
|encrypted_password|string|null: false|
|first_name|string|null: false|
|first_name_kana|string|null: false|
|last_name|string|null: false|
|last_name_kana|string|null: false|
|nickname|string|null: false|
|postal_number|string||
|remember_created_at|datetime||
|reset_password_sent_at|string||
|reset_password_token|string||
|self_image|string||
|self_introduction|text||
|telephone_number|string||

### Association
- belongs_to :area
- has_many   :items
- has_many   :creditcards
- has_many   :trades

## Itemテーブル
|Column|Type|Options|
|------|----|-------|
|bland_id|reference|null: false, foreign_key;true|
|category_child_id|reference|null: false, foreign_key;true|
|category_grandchild_id|reference|null: false, foreign_key;true|
|category_parent_id|reference|null: false, foreign_key;true|
|condition_number|integer||
|daystoship_number|integer||
|description|text|null: false|
|feerate|float|null: false|
|price|integer|null: false|
|profit_price|integer|null: false|
|shippingcharge_number|integer||
|shippingway_id|references|null: false, foreign_key;true|
|size_number|integer|||
|sold_at|datetime|||
|title|string|null: false|
|user_id|references|null: false, foreign_key;true|

### Association
- belongs_to :user
- has_many   :blands 
- has_many   :shippingways 
- has_many   :category_parents 
- has_many   :category_children 
- has_many   :category_grandchildren 
- has_one    :trade 

## Areaテーブル
  |Column|Type|Options|
  |------|----|-------|
  |name|string|null: false|

  ### Association
  - has_many :users
  - has_many :items


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
  |status_number|integer||

  ### Association
  - belongs_to :item

  ## Blandテーブル
  |Column|Type|Options|
  |------|----|-------|
  |name|string|null: false|

  ### Association
  - belongs_to :item

  ## Tradeテーブル
  |Column|Type|Options|
  |------|----|-------|
  |item_id|reference|null: false, foreign_key: true|
  |status_number|integer||
  |item_id|reference|null: false, foreign_key: true|

  ### Association
  - belongs_to :item
  - belongs_to :user

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
  |status_num|integer||
  |telephone_number|string|null: false|
  |user_id|reference|null: false, foreign_key: true|

  ### Association
  - belongs_to :area
  - belongs_to :shipping
  - belongs_to :user

  ## CatetgoryParentテーブル
  |Column|Type|Options|
  |------|----|-------|
  |name|string|null:false|

    ### Association
  - belongs_to :item
  - has_many :CatetgoryChildren

    ## CatetgoryChildテーブル
  |Column|Type|Options|
  |------|----|-------|
  |category_parents_id|reference|null: false, foreign_key: true|
  |name|string|null:false|

    ### Association
  - belongs_to :item
  - belongs_to :CatetgoryParent
  - has_many :CatetgoryGrandchildren
  
  ## CatetgoryGrandchildテーブル
  |Column|Type|Options|
  |------|----|-------|
  |category_children_id|reference|null: false, foreign_key: true|
  |name|string|null:false|

    ### Association
  - belongs_to :item
  - belongs_to :Catetgory_Child