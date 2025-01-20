class Character < ApplicationRecord
    belongs_to :anime
    has_many :scenes
end
