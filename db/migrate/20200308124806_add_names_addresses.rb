class AddNamesAddresses < ActiveRecord::Migration[5.2]
  def up
    add_column :addresses, :first_name, :string, null: true,after: :status_num
    add_column :addresses, :last_name, :string, null: true,after: :first_name
    add_column :addresses, :first_name_kana, :string, null: true,after: :last_name
    add_column :addresses, :last_name_kana, :string, null: true,after: :first_name_kana
  end

  def down
    remove_column :addresses, :first_name, :string, null: true,after: :status_num
    remove_column :addresses, :last_name, :string, null: true,after: :first_name
    remove_column :addresses, :first_name_kana, :string, null: true,after: :last_name
    remove_column :addresses, :last_name_kana, :string, null: true,after: :first_name_kana
  end
end
