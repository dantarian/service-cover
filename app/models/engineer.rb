class Engineer < ApplicationRecord
    has_many :assignments
    has_many :services, through: :assignments
    has_many :presences
    validates :name, presence: true
    validates :name, uniqueness: true

    def working?(working_date)
        presence = self.presences.where(working_date_id: working_date.id).first
        unless presence
            return working_date.day_type == "weekday" || working_date.day_type == "special"
        end

        presence.status == "working"
    end

    def maybe_working?(working_date)
        presence = self.presences.where(working_date_id: working_date.id).first
        unless presence
            return false
        end

        presence.status == "maybe"
    end

    def initials
        self.name.split(" ").map(&:first).map(&:upcase).join("")
    end
end
