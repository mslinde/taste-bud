class CreateUserLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :user_languages do |t|
      t.references :language, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
