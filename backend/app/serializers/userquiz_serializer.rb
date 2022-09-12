class UserquizSerializer < ActiveModel::Serializer
  attributes :quizNo, :mcScore

  belongs_to :user
end
