class Word < ApplicationRecord
    has_many :games
    has_many :players, through: :games
    

# require 'pry'
# require 'rest-client'
# require 'json'


#     # def self.all_words
#     sleep(2)   
#     resp = RestClient.get("http://app.linkedin-reach.io/words")
#     word_search_result = JSON.parse(resp)
#     #     words_array= word_search_result.split("\n")

#     # end 
#     # binding.pry

#     # def self.separate_words(all_words)
#     #     all_words.split("\n")
#     # end 

end
