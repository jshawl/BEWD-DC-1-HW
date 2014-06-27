puts "Welcome to MAGIC TECH JOBS 8-BALL, the 'make my decision for me' app. Just enter how much money you need to make minimum, and we'll tell you what to do."

puts "Enter your minimum annual salary requirement, rounded to the nearest dollar (no '$' needed):"

user_min_sal = gets.chomp.to_i 

if user_min_sal.class != Fixnum
	then puts "Please enter a number. Remember, no $ sign"
		user_min_sal = gets.chomp.to_i
end