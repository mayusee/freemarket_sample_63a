class CreateCategoryChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :category_children do |t|
      # references
      t.references :category_parent,        null: false, foreign_key: true

      # values
      t.string :name,    null: false

      t.timestamps
    end
    add_index :category_children, :name
  end
end
