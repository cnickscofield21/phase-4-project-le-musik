json.extract! album, :id, :title, :year, :image, :created_at, :updated_at
json.url album_url(album, format: :json)