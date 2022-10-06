class LessonSerializer < ActiveModel::Serializer
  attributes :id, :title, :isgame #, :lessonObject

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

    def lessonObject

      {
        gamesection: {
              basicinfo: self.object.gamesection,
              cover: self.object.cover,
              otherpics: self.object.otherpics,
              paragraphs: self.object.paragraphs,
              screenshots: self.object.screenshots
            },

        japanesesection: {
             basicinfo: self.object.gamesection,
             howtomakes: self.object.howtomakes,
             japanesecopyparagraphs: self.object.japanesecopyparagraphs,
             examples: self.object.examples,
             vocabwords: self.object.vocabwords
        }

      }
    end
end
