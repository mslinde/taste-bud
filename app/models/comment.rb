class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :spot
  validates :note, length: { minimum: 20 }
end
