class ChangeColumnToSpotIdFromTableComments < ActiveRecord::Migration[5.2]
  def change
    change_column :comments, :spot_id, :bigint
  end
end
