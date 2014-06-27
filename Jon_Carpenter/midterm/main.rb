require 'rest_client'
require 'open-uri'
require 'json'

# place all job titles with salaries into an array of hashes, job_postings
# sort arrays by salary
# pick and puts a random job with a salary >= user_min_sal

def get_angel_salaries(user_min)
	job_postings = []
	angel_salaries = JSON.parse(RestClient.get 'https://api.angel.co/1/jobs')
		
	angel_salaries['jobs'].each do |info| 
		job_postings << {min: info['salary_min'], title: info['title']} unless info['salary_min'] == nil 
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
end	

puts "Welcome to MAGIC TECH JOBS 8-BALL, the 'make my decision for me' app. Just enter how much money you need to make minimum, and we'll tell you what to do."

puts "Enter your minimum annual salary requirement, rounded to the nearest dollar (no '$' needed):"

user_min = gets.chomp.to_i
	if user_min.class == Float
		then puts "No decimals please!"
	else
		get_angel_salaries(user_min)
	end

user_min



