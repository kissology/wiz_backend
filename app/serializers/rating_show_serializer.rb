class RatingShowSerializer < ActiveModel::Serializer
  attributes :id,:id, :cleanliness, :changing_table, :handicap_accessable, :gender_neutral, :feminine_products, :mirror
  
 has_many :users
end
