class RemoveCommentFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :comment, :text
  end
end
