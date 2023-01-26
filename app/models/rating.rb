class Rating < ApplicationRecord
    has_many :restrooms
    has_many :users, through: :restrooms

end
