class User < ApplicationRecord
    has_many :ratings, dependent: :destroy
    has_many :restrooms, through: :user
    

end
