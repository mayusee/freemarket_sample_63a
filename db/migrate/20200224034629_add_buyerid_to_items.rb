class AddBuyeridToItems < ActiveRecord::Migration[5.2]
  def change
      # enum
      add_column :items, :status_num, :integer, null: false, limit: 1, unsigned: true
  end
end
