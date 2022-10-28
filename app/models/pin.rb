class Pin < ApplicationRecord
    validates :description, presence: true
    belongs_to :user
    has_one_attached :image
end
