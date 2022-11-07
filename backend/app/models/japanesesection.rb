class Japanesesection < ApplicationRecord
    belongs_to :lesson

    has_many :examples
    has_many :vocabwords
end
