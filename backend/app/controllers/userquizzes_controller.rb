class UserquizzesController < ApplicationController
    def userandquiz
=begin
            get 'userquiz/:userid/:quizid', to:'userquizzes#userandquiz'
            t.integer "quizNo"
            t.integer "mcScore"
            t.integer "user_id"
=end
        userquiz = Userquiz.find_by(user_id:params[:userid], quizNo: params[:quizid])
        render json: userquiz, status: 200
    end
end
