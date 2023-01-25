class RatingSerializer < ActiveModel::Serializer
  attributes :id, :cleanliness, :changing_table, :handicap_accessable, :gender_neutral, :feminine_products, :mirror
end
