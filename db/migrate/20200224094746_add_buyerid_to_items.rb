class AddBuyeridToItems < ActiveRecord::Migration[5.2]
  def change
      # references
      add_reference(:items, :seller, null: false, foreign_key: {to_table: :users})
      add_reference(:items, :buyer, null: true, foreign_key: {to_table: :users})
      remove_reference(:items, :user, null: false, foreign_key: true)

      # enum
      add_column(:items, :status_num, :integer, null: false, limit: 1, unsigned: true)
  end
end
