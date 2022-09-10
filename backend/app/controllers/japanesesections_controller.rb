class JapanesesectionsController < ApplicationController
    def index
        japanesesections = Japanesesection.all
        render json: japanesesections, status: 200
    end
end
