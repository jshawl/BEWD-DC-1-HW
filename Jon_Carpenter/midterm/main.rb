require 'rest_client'
require 'JSON' 

def get_angel_roles
	angel = JSON.parse(RestClient.get 'https://api.angel.co/1/jobs')
	angel ["RoleTag"].each do | show_role |
		role = show_role["RoleTag"]
		p "#{role}"
end

get_angel_roles

angel

# maybe add .json to URL?
# angel ['new'].each do |job|
# 	title = job["title"]
#	p "TITLE: #{title}"
#	end
#end

puts '========== Angel Jobs ========='
get_angel_roles

end
