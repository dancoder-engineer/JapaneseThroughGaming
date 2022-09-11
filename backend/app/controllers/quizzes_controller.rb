class QuizzesController < ApplicationController
    def index
        quizzes = Quiz.all
        render json: quizzes, status: 200
    end

    def show
        quiz = Quiz.find_by(id: params[:id])
        render json: quiz, status: 200
    end
end
