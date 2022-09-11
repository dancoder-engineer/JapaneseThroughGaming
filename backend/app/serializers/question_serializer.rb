class QuestionSerializer < ActiveModel::Serializer
  attributes :ques, :choice1, :choice2, :choice3, :choice4, :correctChoice
  belongs_to :quiz
end
