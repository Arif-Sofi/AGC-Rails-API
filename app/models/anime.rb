class Anime < ApplicationRecord
    has_many :characters
    has_many :scenes
    has_many :emotions, through: :scenes
    has_many :emotions, through: :anime
end
