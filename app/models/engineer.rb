class Engineer < ApplicationRecord
    has_many :assignments
    has_many :services, through: :assignments
    has_many :presences
    validates :name, presence: true
    validates :name, uniqueness: true
end
