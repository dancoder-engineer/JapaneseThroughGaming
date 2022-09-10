class ReleasesController < ApplicationController
    def index
        releases = Release.all
        render json: releases, status: 200
    end
end
