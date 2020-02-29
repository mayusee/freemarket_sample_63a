
class AddAncestryToProductSizes < ActiveRecord::Migration[5.2]
  def change
    add_column :product_sizes, :ancestry, :string, null: true
    add_index :product_sizes, :ancestry
  end
end
