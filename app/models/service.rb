class Service < ApplicationRecord
    has_many :assignments
    has_many :engineers, through: :assignments
    validates :name, presence: true
    validates :name, uniqueness: true
end
