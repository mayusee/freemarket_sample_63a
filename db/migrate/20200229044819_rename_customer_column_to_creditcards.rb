class RenameCustomerColumnToCreditcards < ActiveRecord::Migration[5.2]
  def change
    rename_column :creditcards, :pay_token, :card_id
    rename_column :creditcards, :customer, :customer_id
  end
end
