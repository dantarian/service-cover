class WorkingDate < ApplicationRecord
    has_many :presences
    enum date_type: { weekday: 'weekday', weekend: 'weekend', holiday: 'holiday', special: 'special' }
    validates :day_type, inclusion: { in: date_types.keys }
    validates :working_date, presence: true
    validates :working_date, uniqueness: true
end
