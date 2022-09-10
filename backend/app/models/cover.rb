class Cover < ApplicationRecord
    belongs_to :gamesection
    has_many :otherpics
end
