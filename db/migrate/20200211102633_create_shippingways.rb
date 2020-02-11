class CreateShippingways < ActiveRecord::Migration[5.2]
  def change
    create_table :shippingways do |t|
      # values
      t.integer :status_id
      t.string  :name,     null: false

      t.timestamps
    end
  end
end
