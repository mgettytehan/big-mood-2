class MoodLog < ApplicationRecord
    has_and_belongs_to_many :scale_items
end
