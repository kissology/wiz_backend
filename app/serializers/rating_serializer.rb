class RatingSerializer < ActiveModel::Serializer
  attributes :id, :cleanliness, :changing_table, :handicap_accessable, :gender_neutral, :feminine_products, :mirror
  has_one :restroom
  has_one :user
end
