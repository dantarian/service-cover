class WorkingDate < ApplicationRecord
    enum date_types: { weekday: 'weekday', weekend: 'weekend', holiday: 'holiday', special: 'special' }
    validates :day_type, inclusion: { in: date_types.keys } 
end
