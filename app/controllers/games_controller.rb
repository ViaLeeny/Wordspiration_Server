class GamesController < ApplicationController

    def index 
        game = Game.all 
        render json: game, include: [:player, :word]
    end 

    def show 
        game = Game.find_by(id: params[:id])
        if game 
            render json: game, include: [:player, :word]
        else 
            render json: {error: "Game not found"}
         end 
    end 

    def create 
        player = Player.find_or_create_by(name: params[:playerName])
        theWord = Word.find_or_create_by(text: params[:word])
        game = Game.new(player_id: player.id, word_id: theWord.id)

        if game.valid? 
            game.save 
            render json: game, include: [:player, :word]
        else
            render json: {error: "Game invalid."}
        end 
    end 
end
