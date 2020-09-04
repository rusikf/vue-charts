class User < ApplicationRecord
  has_many :audio_segments, dependent: :destroy
end

