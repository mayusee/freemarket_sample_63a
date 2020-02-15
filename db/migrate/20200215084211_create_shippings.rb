class CreateShippings < ActiveRecord::Migration[5.2]
  def change
    create_table :shippings do |t|
      # references
      t.references :address,      null: false, foreign_key: true
      t.references :user,         null: false, foreign_key: true
      t.references :item,         null: false, foreign_key: true

      t.timestamps
    end
  end
end
