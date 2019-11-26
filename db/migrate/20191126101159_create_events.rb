class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :address
      t.datetime :start_time
      t.text :description
      t.string :title
      t.references :user
      t.references :vibe

      t.timestamps
    end
  end
end
