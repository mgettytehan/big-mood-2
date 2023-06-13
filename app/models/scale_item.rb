class ScaleItem < ApplicationRecord
  belongs_to :moodscale
  has_and_belongs_to_many :mood_logs
end