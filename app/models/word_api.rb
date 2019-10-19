
require 'pry'
require 'rest-client'
require 'json'


    # def rand_string_alpha(length, save_as = nil)
    #     chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ'
    #     result = Array.new(length) { chars[rand(chars.length)].chr }.join
    #     current_test.test_params[save_as] = result if save_as
    #     result
    #    end
        
    # result = rand_string_alpha(10)   
    # request = '{"name": "'+result+'","iso_639_1": "en"}'
    

    # url = "http://app.linkedin-reach.io/words"
    # resp = RestClient.get(url, headers={})
    # word_search_result = JSON.parse(resp)
    # result = word_search_result[0]
    # # binding.pry
    # # post_request = RestClient.post(url, request, {content_type: "application/json;charset=utf-8"})
    

    
    # puts word_search_result.code
    # puts word_search_result.headers
    # puts word_search_result.body

    # word_search_result = JSON.parse(resp)
    #     words_array= word_search_result.split("\n")

    # end 


    # def self.separate_words(all_words)
    #     all_words.split("\n")
    # end 