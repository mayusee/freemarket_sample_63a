class CreateItemimages < ActiveRecord::Migration[5.2]
  def change
    create_table :itemimages do |t|
      # references
      t.references :item,     null: false, foreign_key: true

      # values
      t.string     :image,    null: false

      t.timestamps
    end
  end
end
