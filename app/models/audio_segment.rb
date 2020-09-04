class AudioSegment < ApplicationRecord
  belongs_to :user
  scope :ordered, -> { order(:created_at) }
  attr_accessor :duration
end

