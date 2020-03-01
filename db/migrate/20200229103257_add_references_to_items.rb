class AddReferencesToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference(:items, :seller,         null: false, foreign_key: {to_table: :users})
    add_reference(:items, :seller_address, null: false, foreign_key: {to_table: :addresses})
    add_reference(:items, :buyer,          null: true,  foreign_key: {to_table: :users})
    add_reference(:items, :buyer_address,  null: true,  foreign_key: {to_table: :addresses})
  end
end
