class CreateTrades < ActiveRecord::Migration[5.2]
  def change
    create_table :trades do |t|
      # references
      t.references :item,                 null: false, foreign_key: true
      t.references :user,                 null: false, foreign_key: true
      t.references :address,              null: false, foreign_key: true

      # enum
      t.integer    :status_num,           null: false, limit: 1, unsigned: true, default: 0
      t.timestamps
    end
  end
end
