class Player < ApplicationRecord
    has_many :games
    has_many :words, through: :games
end
