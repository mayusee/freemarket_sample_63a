class RenameStatusNumToAncestry < ActiveRecord::Migration[5.2]
  def change
    rename_column :shippingways, :status_num , :ancestry
    change_column :shippingways, :ancestry , :string
  end
end
