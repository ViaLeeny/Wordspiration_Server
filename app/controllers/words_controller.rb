class WordsController < ApplicationController

def index 
    word = Word.all 
    render json: word, include: [:games]
end 


end
