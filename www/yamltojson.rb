require 'json'
require 'yaml'

data = YAML::load( File.open('restaurants.yml') )

if ARGV.empty?
	json = JSON.generate(data)
	File.open('restaurants.min.json', 'w') { |file| file.write(json) }
else
	json = JSON.pretty_generate(data)
	File.open('restaurants.json', 'w') { |file| file.write(json) }
end

