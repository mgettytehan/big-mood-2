class Moodscale < ApplicationRecord
    has_many :scale_items, dependent: :destroy

    validates :name, :scale_type, presence: true
end
