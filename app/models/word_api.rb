require 'pry'
require 'rest-client'
require 'json'



resp = RestClient.get("http://app.linkedin-reach.io/words")
words = JSON.parse(resp)



