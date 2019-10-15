class PlayersController < ApplicationController

    def index 
        player = Player.all 
        render json: player, include: [:games, :words]
    end 


    def show 
        player = Player.find_by(id: params[:id])
        if player 
            render json: player, include: [:games, :words]
        else 
            render json: {error: "Player not found."}
        end 
    end 



end
