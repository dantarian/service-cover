class Presence < ApplicationRecord
    enum statuses: { working: 'working', maybe: 'maybe', off: 'off' }
    validates :status, inclusion: { in: statuses.keys }
end
