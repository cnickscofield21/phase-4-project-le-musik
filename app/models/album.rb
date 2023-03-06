class Album < ApplicationRecord
  has_many :tracks
  has_many :artists, through: :tracks
end