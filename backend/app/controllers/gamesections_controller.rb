class GamesectionsController < ApplicationController
    def index
        gamesections = Gamesection.all
        render json: gamesections, status: 200
    end
    
end
