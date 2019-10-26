class Relationship < ApplicationRecord
    has_many :relationship_events
    has_many :events, through: :relationship_events
    belongs_to :user
    
end
