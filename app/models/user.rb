class User < ApplicationRecord
    has_many :restrooms
    has_many :ratings, through: :user, dependent: :destroy
    

end
