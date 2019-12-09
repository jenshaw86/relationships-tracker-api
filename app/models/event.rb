class Event < ApplicationRecord
    has_many :relationship_events
    has_many :relationships, through: :relationship_events
    belongs_to :user
end
