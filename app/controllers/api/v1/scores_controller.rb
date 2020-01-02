class Api::V1::ScoresController < ApplicationController

    def index 
        scores = Score.all
        render json: scores, except: [:created_at, :updated_at]
    end 

    def create
        score = Score.create!(player_params)
        render json: score, except: [:created_at, :updated_at]
    end

end

def player_params
    # whitelist params
    params.permit(:name, :profit, :id, :days)
end