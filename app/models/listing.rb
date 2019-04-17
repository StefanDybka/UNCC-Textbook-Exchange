class Listing < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5 }
    validates :email, presence: true, length: { minimum: 5 }
    validates :condition, presence: true, length: { minimum: 2 }
end
