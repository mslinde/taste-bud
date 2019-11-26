require_relative "vibe"

class Event < ApplicationRecord
  belongs_to :vibe
  has_many :spots
  belongs_to :user

  def find_by_vibe
  end
end
