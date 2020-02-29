class RemoveShippingchargeFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :shippingcharge_num, :integer
    remove_column :items, :size_num, :integer
  end
end
