class CreateCategoryParents < ActiveRecord::Migration[5.2]
  def change
    create_table :category_parents do |t|
      # values
      t.string :name,    null: false

      t.timestamps
    end
    add_index :category_parents, :name
  end
end
