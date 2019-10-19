class WordsController < ApplicationController

def index 
    word = Word.all.sample
    render json: word, include: [:games]
end 

def show 
    word = Word.find_by(id: params[:id])
    if word 
        render json: word, include: [:games]
    else 
        render json: {error: "Word not found."}
    end 
end 

end
