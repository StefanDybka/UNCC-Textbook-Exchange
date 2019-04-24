class Report < ApplicationRecord
    
    
    validates :name, presence: true, length: { minimum: 2 }
    validates :email, presence: true, length: { minimum: 3 }
    validates :reason, presence: true, length: { minimum: 5 }
end
