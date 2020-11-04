class Presence < ApplicationRecord
    belongs_to :engineer
    belongs_to :working_date
    enum statuses: { working: 'working', maybe: 'maybe', off: 'off' }
    validates :status, inclusion: { in: statuses.keys }
    validates :engineer_id, presence: true
    validates :working_date_id, presence: true
    validates :working_date_id, uniqueness: { scope: :engineer_id, message: "already exists for this engineer" }
end
