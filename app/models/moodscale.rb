class Moodscale < ApplicationRecord
    has_many :scale_items, dependent: :destroy

    validates :name, :scale_type, presence: true

    accepts_nested_attributes_for :scale_items
end
