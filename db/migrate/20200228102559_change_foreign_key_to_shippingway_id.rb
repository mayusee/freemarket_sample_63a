class ChangeForeignKeyToShippingwayId < ActiveRecord::Migration[5.2]
  def change
    remove_reference(:items, :shippingway, null: false, foreign_key: true)
    add_reference(:items, :shippingway, null: true, foreign_key: true)
  end
end
