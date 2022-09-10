class VocabwordSerializer < ActiveModel::Serializer
  attributes :kanji, :nokanji, :english
end
