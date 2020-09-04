class AudioSegment < ApplicationRecord
  belongs_to :user
  scope :ordered, -> { order(:created_at) }
end

