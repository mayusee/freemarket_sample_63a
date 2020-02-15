class CreateCreditcards < ActiveRecord::Migration[5.2]
  def change
    create_table :creditcards do |t|
      # references
      t.references :user,              null: false, foreign_key: true

      # values
      t.string     :pay_token,         null: false
      t.string     :customer,          null: false

      t.timestamps
    end
  end
end
