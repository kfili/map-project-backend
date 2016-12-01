class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :location, :address, :phone, :rating
end
