require 'open-uri'
require 'json'
require 'rest_client'



def get_digg_stories
	digg = JSON.parse(RestClient.get 'https://api.angel.co/1/jobs')
	digg ['data']['feed'].each do |story|
	title = story['content']['title']
	p "TITLE: #{title}"
	category = story['content']['tags'][0]['display']
	p "CATEGORY = #{category}"
end
end
get_digg_stories


# def get_angel_roles
# 	angel = JSON.parse(RestClient.get 'https://api.angel.co/1/jobs')
# 	angel ['jobs']['id'].each do |story_2|
# 	job = story_2["id"]
# 	p "#{job}"
#     p angel.body
# end
# get_angel_roles



# def result
# 	JSON.parse(RestClient.get "http://digg.com/api/news/popular.json")
# end

# result.each



# maybe add .json to URL?
# angel ['new'].each do |job|
# 	title = job["title"]
#	p "TITLE: #{title}"
#	end
#end



# puts '========== Angel Jobs ========='
# get_angel_roles

# end
