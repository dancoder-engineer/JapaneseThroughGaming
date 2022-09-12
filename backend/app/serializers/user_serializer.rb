class UserSerializer < ActiveModel::Serializer
  attributes :id, :userName, :email, :gotHowFar, :paidHowFar

  has_many :userquizzes
end
