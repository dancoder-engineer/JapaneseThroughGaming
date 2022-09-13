class UserquizzesController < ApplicationController
    
    skip_before_action :verify_authenticity_token

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

    def update
        userquiz = Userquiz.find_by(id: params[:id])
        userquiz.update(allowed)
        render json: userquiz, status: 200
    end

    def create
        userquiz = Userquiz.create(allowed)
        render json: userquiz
    end



    private
    def allowed
        params.permit(:quizNo, :mcScore, :user_id)
    end
end
