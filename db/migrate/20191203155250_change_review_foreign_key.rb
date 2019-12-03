class ChangeReviewForeignKey < ActiveRecord::Migration[5.2]
  def change
    remove_reference :reviews, :event, index: true, foreign_key: true
    add_reference :reviews, :spot, foreign_key: true
  end
end
