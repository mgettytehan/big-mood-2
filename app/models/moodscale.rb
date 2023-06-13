class Moodscale < ApplicationRecord
    has_many :scale_items, dependent :destroy
end
