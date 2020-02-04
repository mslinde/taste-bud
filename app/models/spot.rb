class Spot < ApplicationRecord
  belongs_to :user
  has_one :review, dependent: :destroy
  belongs_to :event
  has_many :comments, dependent: :destroy

  # validates :user_id, uniqueness: true
end
