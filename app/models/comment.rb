class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :spot
  validates :note, presence: true
end
