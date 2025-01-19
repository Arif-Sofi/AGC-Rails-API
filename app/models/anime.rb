class Anime < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true

    attribute :title, :string
    attribute :description, :text
end
