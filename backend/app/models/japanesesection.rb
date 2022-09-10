class Japanesesection < ApplicationRecord
    belongs_to :lesson

    has_many :howtomakes
    has_many :japanesecopyparagraphs
    has_many :examples
    has_many :vocabwords
end
