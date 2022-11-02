class GamesectionSerializer < ActiveModel::Serializer
  attributes :id, :reviewtext, :screenshottext, :screenshoturls
  has_many :releases
  has_one :cover
  has_many :otherpics, through: :cover
  has_many :paragraphs
  has_many :screenshots
  
end
