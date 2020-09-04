class User < ApplicationRecord
  has_many :audio_segments, dependent: :destroy
  scope :ordered, -> { order(:name) }
end

