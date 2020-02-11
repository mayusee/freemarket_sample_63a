class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      # references
      t.references :user,                null: false, foreign_key: true
      t.references :bland,               null: false, foreign_key: true
      t.references :area,                null: false, foreign_key: true
      # t.references :shippingway,         null: false, foreign_key: true

      # enum
      t.integer    :size_id
      t.integer    :condition_id 
      t.integer    :shippingcharge_id 
      t.integer    :daystoship_id 


      # values
      t.integer    :category_parent_id,     null: false
      t.integer    :category_child_id,      null: false
      t.integer    :category_grandchild_id, null: false
      t.string     :title,                  null: false
      t.text       :description
      t.integer    :price,                  null: false
      t.float      :feerate,                null: false
      t.integer    :profit_price,           null: false
      

      t.timestamps
    end
  end
end
