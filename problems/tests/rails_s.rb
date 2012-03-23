require 'net/http'
require 'uri'

uri = URI.parse "http://localhost:3000/lambda/alive"
res = Net::HTTP.get_response uri

print "{\"success\":#{ res.code == "200" }}"

