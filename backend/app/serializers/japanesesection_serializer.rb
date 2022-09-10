class JapanesesectionSerializer < ActiveModel::Serializer
  attributes :lessontitle, :shortdescription, :screenshot
  has_many :howtomakes
  has_many :japanesecopyparagraphs
  has_many :examples
  has_many :vocabwords
end
