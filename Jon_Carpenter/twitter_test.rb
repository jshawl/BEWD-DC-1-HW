require 'rubygems'
require 'oauth'
require 'json'

# Change the following values to those provided on dev.twitter.com
# The consumer key identifies the application making the request.
# The access token identifies the user making the request.
consumer_key = OAuth::Consumer.new(
    "qvRUBU1ItC6Nh69o3YQraU1Rs",
    "o4DXPzvBJPkcm0LEBZWmrvHqNz0HCPUa2LoE4He9zQuMMQkzuy")
access_token = OAuth::Token.new(
    "14149168-TWFoTqFcb9pnIOTDSr6h9hmgnb3X1gXOQQYiOzdtZ",
    "eosqzOLhz7nmkltholX1QbdEWhYELHkI6AGvCafNLzWXs")

# All requests will be sent to this server.
baseurl = "https://api.twitter.com"

# The verify credentials endpoint returns a 200 status if
# the request is signed correctly.
address = URI("#{baseurl}/1.1/account/verify_credentials.json")

# Set up Net::HTTP to use SSL, which is required by Twitter.
http = Net::HTTP.new address.host, address.port
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER

# Build the request and authorize it with OAuth.
request = Net::HTTP::Get.new address.request_uri
request.oauth! http, consumer_key, access_token

# Issue the request and return the response.

http.start
response = http.request request
puts "The response status was #{response.code}"



# Parse a response from the API and return a user object.
def parse_user_response(response)
  user = nil

  # Check for a successful request
  if response.code == '200'
    # Parse the response body, which is in JSON format.
    # ADD CODE TO PARSE THE RESPONSE BODY HERE
    body = response.body
    user = JSON.parse(body)

    # Pretty-print the user object to see what data is available.
    puts "Hello, #{user["screen_name"]}!"
  else
    # There was an error issuing the request.
    puts "Expected a response of 200 but got #{response.code} instead"
  end

  user
end

# All requests will be sent to this server.
baseurl = "https://api.twitter.com"

# Verify credentials returns the current user in the body of the response.
address = URI("#{baseurl}/1.1/account/verify_credentials.json")

# Set up HTTP.
http             = Net::HTTP.new address.host, address.port
http.use_ssl     = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER

# If you entered your credentials in the previous
# exercise, no need to enter them again here. The
# ||= operator will only assign these values if
# they are not already set.
consumer_key ||= OAuth::Consumer.new "ENTER IN EXERCISE 1", ""
access_token ||= OAuth::Token.new "ENTER IN EXERCISE 1", ""

# Issue the request.
request = Net::HTTP::Get.new address.request_uri
request.oauth! http, consumer_key, access_token
http.start
response = http.request(request)
user = parse_user_response(response)