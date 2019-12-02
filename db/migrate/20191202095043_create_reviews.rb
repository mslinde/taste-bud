class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :vibe
<<<<<<< HEAD
      t.integer :neighborhood
=======
      t.integer :location
>>>>>>> master
      t.integer :venue
      t.boolean :attended
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
