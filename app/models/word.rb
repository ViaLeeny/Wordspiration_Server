require 'pry'
require 'rest-client'
require 'json'


class Word < ApplicationRecord
    has_many :games
    has_many :players, through: :games
    

# RAN THIS CODE ONCE - PURPOSE: TO GET RESPONSE STRING, SPLIT LINE 
# AND CREATE EACH WORD IN MY DATABASE
    def self.all_words 
        resp = RestClient.get("http://app.linkedin-reach.io/words")
        words_array= resp.body.split("\n")


        # .EACH OVER THEM AND .CREATE THEM
        words_array.each{ | word | Word.create({'text': word})}
        
    end 

end
