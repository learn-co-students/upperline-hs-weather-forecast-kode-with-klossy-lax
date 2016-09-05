# Your methods should take in a hash as an argument - here's an example of what the hash will look like - the methods should take this hash as an argument and return the desired output.

weather = {
	:city => "New York",
	:description => "Partly Cloudy",
	:temperature_farenheit => 66.3
}

# 1. Complete the method below called location, that accepts a hash called weather as an argument so that it returns the value of city from the weather hash.
def location(weather)
	weather[:city]
end
puts location(weather)
# 2. Using the location method as a guide, write a  method called "description" so it returns the description from the weather hash.
def description(weather)
  weather[:description]
end
puts description(weather)

def temperature_farenheit(weather)
  weather[:temperature_farenheit]
end
puts temperature_farenheit(weather)
# 3. Using the methods above and string interpolation, update the method below so that it returns a string that describes the current weather - for example: "The weather in New York is Partly Cloudy. The temperature is 66.1 degrees Farenheit." HINT: the method should RETURN the string, not print it to the terminal.
def forecast(weather)
  "the weather in #{weather[:location]} is #{weather[:description]}. the temperature is #{weather[:temperature_farenheit]} degrees farenheit."
end
puts forecast(weather)
#4. Write a method that takes in the weather hash as an argument.
# You'll want to use the each method to iterate over the hash and print out
# `The city is New York.` `The description is Partly Cloudy.` `The temperature is 66.3.`
def iterate_forecast(weather)
  weather.each do |key,value|
    puts "the #{key} is #{value}."
  end
end
puts iterate_forecast(weather)
# BONUS:  Write a method that takes in the weather hash as an argument and converts the farenheit temperature to celcius. Have the method round your answer to two decimal places. Is there a method we can use to round in Ruby?

# Hint - how can we find the algorithm to convert Farenheit to Celsius?
def conversion(weather)
  farenheit = weather[:temperature_farenheit]
  celcius = (farenheit - 32.0) * (5.0 / 9.0)
  celcius.round(2)
end
puts conversion(weather)


