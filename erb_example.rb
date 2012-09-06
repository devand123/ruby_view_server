require 'erb'
require 'date'
require 'time'

x = 42 + 55

pets = ['dogs', 'cats', 'lizards']

pets.each do |pet|
	puts "I love #{pet}"
end

template = ERB.new "The value of x is: <%= x %>. "
template2 = ERB.new "There are <%= pets.count %> pets."
template3 = ERB.new "Todays date is <%= Date.today %> and it is <%= Time.now %>"

puts template.result(binding)
puts template2.result(binding)
puts template3.result(binding)