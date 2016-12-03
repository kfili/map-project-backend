class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :place_type, :location, :address, :phone, :rating
end
