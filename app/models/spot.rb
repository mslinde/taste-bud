class Spot < ApplicationRecord
  belongs_to :user
  has_one :review, dependent: :destroy
  belongs_to :event
end
