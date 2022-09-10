class LessonsController < ApplicationController
    def index
        lessons = Lesson.all
        render json: lessons, status: 200
    end

    def show
        lesson = Lesson.find_by(id: params[:id])
        render json: lesson, status: 200
    end
    
end
