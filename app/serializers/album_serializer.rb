class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :image
end
