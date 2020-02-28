class ChangeAncestryToShippingways < ActiveRecord::Migration[5.2]
  def change
    change_column :shippingways, :ancestry , :string
    add_index :shippingways, :ancestry    
  end
end
