class ArtistswithalbumsSerializer < ActiveModel::Serializer
  attributes :id, :name, :image
  has_many :albums
end
