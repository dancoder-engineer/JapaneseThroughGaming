class JapanesesectionSerializer < ActiveModel::Serializer
  attributes :lessontitle, :shortdescription, :screenshot, :howtomake, :japanesecopy
#  has_many :howtomakes
#  has_many :japanesecopyparagraphs
  has_many :examples
  has_many :vocabwords
end
