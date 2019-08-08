class RelationshipEvent < ApplicationRecord
    belongs_to :relationship
    belongs_to :event
end
