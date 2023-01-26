class RestroomSerializer < ActiveModel::Serializer
  attributes :id, :address
  has_one :user 
  has_one :rating
end
