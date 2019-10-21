class Player < ApplicationRecord
    has_many :games
    has_many :words, through: :games


    def self.getPlayerScore 

        # ITERATE OVER PLAYER DATA (player.first.games --> GET GAME.SCORE ADD TO TOTAL SCORE VARIABLE 
        Player.all.each{ |player| 
            # WITIHIN ITERATION SET totalScore = 0
            totalScore = 0

            player.games.all.each{ |game|
                if game.score === true 
                totalScore += game.score 
                end 

            }
        }

    end 

    # TAKE EACH PLAYER & SORT BY MAX --> TOP 5 PLAYERS
    def getTopPlayers 




    end


end
