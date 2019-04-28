class Listing < ApplicationRecord
    belongs_to :user
    has_many :reports, dependent: :destroy

    validates :title, presence: true, length: { minimum: 5 }
    validates :email, presence: true, length: { minimum: 5 }
    validates :condition, presence: true

end
