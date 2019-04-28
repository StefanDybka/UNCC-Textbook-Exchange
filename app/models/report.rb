class Report < ApplicationRecord
    belongs_to :listing
    validates :reason, presence: true, length: { minimum: 5 }
end
