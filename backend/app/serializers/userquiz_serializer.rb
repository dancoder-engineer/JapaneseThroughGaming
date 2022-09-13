class UserquizSerializer < ActiveModel::Serializer
  attributes :id, :quizNo, :mcScore, :user_id

  belongs_to :user
end
