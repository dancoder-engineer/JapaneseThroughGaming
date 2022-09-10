class Lesson < ApplicationRecord
    has_one :gamesection
        has_many :releases, through: :gamesection
        has_one :cover, through: :gamesection
        has_many :otherpics, through: :cover, through: :gamesection
        has_many :paragraphs, through: :gamesection
        has_many :screenshots, through: :gamesection

    has_one :japanesesection
        has_many :howtomakes, through: :japanesesection
        has_many :japanesecopyparagraphs, through: :japanesesection
        has_many :examples, through: :japanesesection
        has_many :vocabwords, through: :japanesesection
end
