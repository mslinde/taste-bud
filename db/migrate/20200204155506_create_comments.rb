class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.bigint :user_id
      t.bigint :spot_id
      t.text :comment

      t.timestamps
    end
  end
end
