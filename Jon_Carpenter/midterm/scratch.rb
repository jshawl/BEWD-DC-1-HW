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

# def get_angel_titles

# 	angel = JSON.parse(RestClient.get 'https://api.angel.co/1/jobs')
 
#  	angel['jobs'].each do |info| 
#  		puts info["title"]

# 	end

#  end

class Jobs

	attr_accessor :title, :salary_min, :get_angel_low_salaries

	def initialize(title, salary_min, get_angel_low_salaries)
		@title = title
		@salary_min = salary_min
		@get_angel_low_salaries = get_angel_low_salaries
		@salaries_hash = {}
		@angel_salaries = angel_salaries
	end 

	def get_angel_low_salaries
		def salary_min
		end

		def salaries_hash
			salaries_hash = {}
		end

		angel_salaries = JSON.parse(RestClient.get 'https://api.angel.co/1/jobs')
	 		angel_salaries['jobs'].each do |info| 
	 			puts info["salary_min"]
	 			# salaries_array.inspect
	 			# puts info["salary_min"]
		end
	end

	def acceptable_jobs
	end

# puts get_angel_titles.titles
	puts get_angel_low_salaries.salary_min

end
# salaries_array <= get_angel_low_salaries.salary_min.each


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

