class Moodscale < ApplicationRecord
    has_many :scale_items, dependent :destroy
    
    validates :name, :type, presence: true
end
