class RemoveColumnsFromItems < ActiveRecord::Migration[5.2]
  def up
    remove_reference(:items, :seller,         null: false, foreign_key: {to_table: :users})
    remove_reference(:items, :seller_address, null: false, foreign_key: {to_table: :addresses})
    remove_reference(:items, :buyer,          null: true,  foreign_key: {to_table: :users})
    remove_reference(:items, :buyer_address,  null: true,  foreign_key: {to_table: :addresses})
    remove_column(:items,:sold_at,:datetime)
    remove_column(:items,:status_num,null: false, limit: 1, unsigned: true, default: 0)
    add_reference(:items, :user,              null: false, foreign_key: true,after: :id)
    add_reference(:items, :address,           null: false, foreign_key: true,after: :user_id)

  end

  def down
    add_reference(:items, :seller,         null: false, foreign_key: {to_table: :users})
    add_reference(:items, :seller_address, null: false, foreign_key: {to_table: :addresses})
    add_reference(:items, :buyer,          null: true,  foreign_key: {to_table: :users})
    add_reference(:items, :buyer_address,  null: true,  foreign_key: {to_table: :addresses})
    add_column(:items,:sold_at,:datetime)
    add_column(:items,:status_num,null: false, limit: 1, unsigned: true, default: 0)
    remove_reference(:items, :user,        null: false, foreign_key: true,after: :id)
    remove_reference(:items, :address,     null: false, foreign_key: true,after: :user_id)
  end
end
