class CreateCategoryChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :category_children do |t|
      # references
      t.references :category_parents,    null: false, foreign_key: true

      # values
      t.string :name

      t.timestamps
    end
  end
end
