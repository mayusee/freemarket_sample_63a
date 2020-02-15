class CreateShippings < ActiveRecord::Migration[5.2]
  def change
    create_table :shippings do |t|
      # references
      t.references :user,         null: false, foreign_key: true
      t.references :address,      null: false, foreign_key: true
      t.references :shippingway,  null: false, foreign_key: true

      # enum
      t.integer    :status_num,   null: false, limit: 1, unsigned: true

      t.timestamps
    end
  end
end
