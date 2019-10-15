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

    def create 
        player = Player.find_or_create_by(name: params: [:name])
        word = Word.find_or_create_by(text: params: [:text])
        game = Game.create(player: player.id, word: word.id)
    end 
end
