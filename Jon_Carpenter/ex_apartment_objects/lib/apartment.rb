#Apartment class.
class Apartment
	attr_accessor :name, :apt_sqft, :apt_bedrooms, :renter

	def initialize(name, apt_sqft, apt_bedrooms, apt_bathrooms)
		@name = name
		@apt_sqft = apt_sqft
		@apt_bedrooms = apt_bedrooms
		@apt_bathrooms = apt_bathrooms
		@renter
	end
end

# Corey testing the code:
#
# apartment1 = Apartment.new('foo', 1200, 1, 'Corey')
# p apartment1.name == 'foo'

# apartment1.renter = "new renter"
# p apartment1.renter == "new renter"