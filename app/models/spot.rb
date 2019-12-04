class Spot < ApplicationRecord
  belongs_to :user
  has_one :review, dependent: :destroy
  belongs_to :event

  # validates :user_id, uniqueness: true
end
