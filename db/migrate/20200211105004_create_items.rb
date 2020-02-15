class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      # references
      t.references :user,                   null: false, foreign_key: true
      t.references :brand,                  null: false, foreign_key: true
      t.references :shippingway,            null: false, foreign_key: true
      t.references :category_parent,        null: false, foreign_key: true
      t.references :category_child,         null: false, foreign_key: true
      t.references :category_grandchild,    null: false, foreign_key: true

      # enum
      t.integer    :size_num,               null: false, limit: 1, unsigned: true
      t.integer    :condition_num,          null: false, limit: 1, unsigned: true
      t.integer    :shippingcharge_num,     null: false, limit: 1, unsigned: true
      t.integer    :daystoship_num,         null: false, limit: 1, unsigned: true

      # values
      t.string     :title,                  null: false
      t.text       :description,            null: false
      t.decimal    :price,                  null: false, precision: 10, scale: 3
      t.decimal    :feerate,                null: false, precision:  4, scale: 3
      t.decimal    :profit_price,           null: false, precision: 10, scale: 3
      t.datetime   :sold_at

      t.timestamps
    end
    add_index :items, :size_num
    add_index :items, :condition_num 
    add_index :items, :shippingcharge_num 
    add_index :items, :daystoship_num
    add_index :items, :title

  end
end
