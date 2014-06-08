class SecretNumber
# this class will generate our secret number for us

	attr_accessor :secret_number

	def initialize(secret_number)
		@secret_number = secret_number 
	end

secret_number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
secret_number = secret_number[rand(secret_number.length)]

end
