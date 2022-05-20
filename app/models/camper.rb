class Camper < ApplicationRecord
    has_many :signups, dependent: :destroy
    has_many :activities, through: :signups

    validates :name, presence: true
    validates :age, inclusion: { in: 8..18 }
    # can use numericality with greater and less than
    # numericality is more for numbers obvi 

end
