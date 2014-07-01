require 'rest_client'
require 'open-uri'
require 'json'

# place all job titles with salaries into an array of hashes, job_postings
# sort arrays by salary
# pick and puts a random job with a salary >= user_min_sal

def get_angel_salaries(user_min)
	job_postings = []
	angel_salaries = JSON.parse(RestClient.get 'https://api.angel.co/1/jobs')
		
	angel_salaries['jobs'].each do |info| # good, but usually you would use singular 'job' as the iterator
		job_postings << {min: info['salary_min'], title: info['title']} if info['salary_min'] 
	end

	job_postings.sort_by! { |k| k[:min] }

	possibilities = []

	job_postings.each do |job| 
 		if job[:min] > user_min 
 			possibilities << "#{job[:title]}:, #{job[:min]}"
		end
	# puts possibilities
	end
	puts "MAGIC TECH JOBS 8-BALL SAYS: THIS IS YOUR JOB"
	puts possibilities.sample
	# this function looks good, but there's a lot going on in here.
	# What if you wanted to add another jobs' source? Which things
	# would be useful to separate out and reuse?
end	

puts "Welcome to MAGIC TECH JOBS 8-BALL, the 'make my decision for me' app. Just enter how much money you need to make minimum, and we'll tell you what to do."

puts "Enter your minimum annual salary requirement, rounded to the nearest dollar (no '$' needed):"

user_min = gets.chomp.to_i
	if user_min.class == Float
		then puts "No decimals please!"
	else
		get_angel_salaries(user_min)
	end
	# nice validation! However, I'm still able to enter 'Pizza' and
	# it returns a job suggestion. You could try validating with regular expressions,
	# or just checking that the input is greater than 0, because:
	#
	# "Pizza".to_i 
	# -> 0
	#
	# crazy right?!
user_min

# This app is pretty cool! You seem to grasp how to retrieve and format data from a 3rd party API.
# However, you have not yet met the requirements listed in [midterm.md](https://github.com/ga-students/BEWD_DC_1/blob/master/Homework/Ruby/Ruby_Midterm/midterm.md)
#
# You still need to:
#
# 1. Change the API call based on the user input
#    - You have hardcoded the API endpoint on line 11
# 2. Use classes and objects
#    - Currently, your app has no classes/oop concepts implemented. I can help you refactor to meet this requirement if you like.
#
# Other than that, looks good! Let me know if you'd like to go over some of these concepts in more detail.
#
# One last thing... When I began looking over this file, I had some trouble locating the right file. Please delete
# unused files in the future so it is much easier to navigate.



