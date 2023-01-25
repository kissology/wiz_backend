class Location < ApplicationRecord
   
    geocoded_by :address 
    After_validation :geocode 
    def address 
      [street, city, state, country].compact.join(", ") 
    end 
end
