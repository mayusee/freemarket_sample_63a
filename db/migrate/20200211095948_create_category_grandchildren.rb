class CreateCategoryGrandchildren < ActiveRecord::Migration[5.2]
  def change
    create_table :category_grandchildren do |t|
      # references
      t.references :category_children,      null: false, foreign_key: true

      # values
      t.string :name,    null: false

      t.timestamps
    end
  end
end
