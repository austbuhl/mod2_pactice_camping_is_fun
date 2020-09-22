class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups

    validates :name, uniqueness: true
    validates :age, inclusion: {in: (8..18), message: "must been between 8 and 18."}
    accepts_nested_attributes_for :activities
end
