class Ourservice < ApplicationRecord
    has_one_attached :image
    belongs_to :user
    validates :Title, presence: true, length: { minimum: 5 }
    validates :description, presence: true, length: { minimum: 10 }

end
