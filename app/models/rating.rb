class Rating < ApplicationRecord
    has_many :restrooms
    has_many :users, through: :restrooms
    validates :cleanliness, numericality: true, inclusion: { in: 0..5}
    # validates :changing_table, inclusion: { in: [ true, false ] }

end
