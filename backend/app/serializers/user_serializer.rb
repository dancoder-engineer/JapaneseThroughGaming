class UserSerializer < ActiveModel::Serializer
  attributes :userName, :email, :gotHowFar, :paidHowFar

  has_many :userquizzes
end
