# require 'odds'
# require 'salaries'

puts "Welcome to the tech jobs 'make my decision for me' app. Just tell us how much money you want to make minimum, and we'll tell you what to do."

puts "Enter your minimum annual salary requirement, rounded to the nearest dollar (no '$' needed):"

user_min_sal = gets.chomp.to_i

puts 

if user_min_sal.class != Fixnum || user_min_sal == 0
	then puts "Please enter a number. Remember, no $ sign"
		user_min_sal = gets.chomp
end

puts user_min_sal

