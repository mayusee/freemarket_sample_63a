class CreateTrades < ActiveRecord::Migration[5.2]
  def change
    create_table :trades do |t|
      # references
        # 出品者情報の外部キー
      t.references :item,                   null: false, foreign_key: true
        # 購入者情報の外部キー
      t.references :user,                   null: false, foreign_key: true

      # values
      t.string     :status_number
      
      t.timestamps
    end
  end
end
