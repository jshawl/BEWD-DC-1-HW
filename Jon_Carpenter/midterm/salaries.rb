require 'rest_client'
require 'open-uri'
require 'json'

#will list top 5 most mentioned jobs on Angel List and the respective number of mentions

# def get_digg_stories
# 	digg = JSON.parse(RestClient.get 'https://api.angel.co/1/jobs')
# 	digg ['data']['feed'].each do |story|
# 	title = story['content']['title']
# 	p "TITLE: #{title}"
# 	category = story['content']['tags'][0]['display']
# 	p "CATEGORY = #{category}"
# end
# end
# get_digg_stories

def get_angel_titles

	roles = []

	angel = JSON.parse(RestClient.get 'https://api.angel.co/1/jobs')
 
 	angel['jobs'].each do |info| 
 		puts info["title"]

	end

 end

get_angel_roles



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




	# attr_accessor 

	# def initialize 
	# 	#these are placeholders until I can generate real values from the API
	# 	ten_popular_jobs = { "job1" => 15,
 #           "job2" => 12,
 #           "job3" => 5,
 #           "job4" => 3
 #           "job5" =>1
 #         }

# end

