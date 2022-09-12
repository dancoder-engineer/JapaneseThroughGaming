class UserquizSerializer < ActiveModel::Serializer
  attributes :quizNo, :mcScore, :user_id

  belongs_to :user
end
