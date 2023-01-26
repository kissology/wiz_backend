class Rating < ApplicationRecord
  belongs_to :restroom
  belongs_to :user
  validates :cleanliness, numericality: true, inclusion: { in: 0..5}
    # validates :changing_table, inclusion: { in: [ true, false ] }
end
