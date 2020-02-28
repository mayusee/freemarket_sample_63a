class ChangeAncestryToShippingways < ActiveRecord::Migration[5.2]
  def change
    remove_column :shippingways, :ancestry , :string
    add_column :shippingways, :ancestry , :string, null: true
    add_index :shippingways, :ancestry
  end
end
