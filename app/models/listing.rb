class Listing < ApplicationRecord
    belongs_to :user
    has_many :reports

    validates :title, presence: true, length: { minimum: 4 }
    validates :email, presence: true, length: { minimum: 4 }
    ISBN_REGEX = /(\A(?=(?:\D*\d){10}(?:(?:\D*\d){3})?$)[\d-]+\z)|(\A\z)/
    validates :isbn, format: { with: ISBN_REGEX }
    validates :condition, presence: true

end
