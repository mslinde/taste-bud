class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_languages, :users_id, :user_id
  end
end
