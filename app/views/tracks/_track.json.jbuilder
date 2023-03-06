json.extract! track, :id, :track, :title, :duration, :year, :album_id, :artist_id, :created_at, :updated_at
json.url track_url(track, format: :json)
