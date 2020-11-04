class Assignment < ApplicationRecord
    belongs_to :engineer
    belongs_to :service
    validates :engineer_id, presence: true
    validates :service_id, presence: true
    validates :engineer_id, uniqueness: { scope: :service_id, message: "can only be assigned to a given service once" }
end
