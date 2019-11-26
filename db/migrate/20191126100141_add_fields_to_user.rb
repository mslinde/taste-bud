class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :full_name, :string
    add_column :users, :current_country, :string
    add_column :users, :origin_country, :string
    add_column :users, :email_address, :string
    add_column :users, :birthday, :date
    add_column :users, :gender, :string
    add_column :users, :profile_photo, :string
  end
end
