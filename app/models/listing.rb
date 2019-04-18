class Listing < ApplicationRecord
    belongs_to :user
    has_many :reports
    validates :title, presence: true, length: { minimum: 4 }
    validates :email, presence: true, length: { minimum: 1 }
    validates :condition, presence: true, length: { minimum: 2 }
end
