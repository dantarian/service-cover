class Service < ApplicationRecord
    has_many :assignments
    has_many :engineers, through: :assignments
    validates :name, presence: true
    validates :name, uniqueness: true

    def working_engineers(working_date)
        self.engineers.select{ |e| e.working?(working_date) }
    end

    def working_engineers_initials(working_date)
        self.working_engineers(working_date).map{ |e| e.initials }.join(" ")
    end

    def maybe_engineers(working_date)
        self.engineers.select{ |e| e.maybe_working?(working_date) }
    end
    
    def maybe_engineers_initials(working_date)
        self.maybe_engineers(working_date).map{ |e| e.initials }.join(" ")
    end

    def ok?(working_date)
        self.working_engineers(working_date).size > 1
    end

    def borderline?(working_date)
        self.working_engineers(working_date).size == 1
    end

    def fixable?(working_date)
        self.working_engineers(working_date).size == 0 && self.maybe_engineers(working_date).size > 0
    end

    def status(working_date)
        return 'ok' if self.ok?(working_date)
        return 'borderline' if self.borderline?(working_date)
        return 'fixable' if self.fixable?(working_date)
        return '' if ['weekend', 'holiday'].include?(working_date.day_type)
        'notok'
    end
end
