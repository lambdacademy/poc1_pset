require 'net/http'
require 'uri'

uri = URI.parse "http://localhost:3000/lambda/alive"
res = Net::HTTP.get_response uri

puts "res: #{ res.inspect }"

