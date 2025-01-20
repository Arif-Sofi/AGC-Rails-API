class Scene < ApplicationRecord
  belongs_to :character
  belongs_to :emotion
  belongs_to :anime
end
