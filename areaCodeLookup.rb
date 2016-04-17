dial_book = {
   
   "Nashville" => "615",
   "Cookeville" => "615",
   "Pigeon Forge" => "865",
   "Johnson City" => "865",
   "Chattanooga" => "423",
   "Lawrenceburg" => "931",
   "Jackson" => "731",
   "Memphis" => "901",
   "Germantown" => "901",
   "Knoxville" => "865"
   
}

# method to display city names

def displayCities(dial_book)
   
   puts "Available Cities: "
   
   dial_book.each { |k, v| puts k }
   
end

def getCity(dial_book)
   
   puts ""
   
   displayCities(dial_book)
   
   puts ""
   
   puts "What is the name of the city in Tennessee you would like to lookup?"
   
   city = gets.chomp
   
   return dial_book.key?(city), city
end



# method to get area code, dial_book, and the city name
def getAreaCode(city_name, dial_book)
   
   areaCode = dial_book.select { |k, v| k == city_name }
   
   areaCode.select { |k, v| return v} # Return just the area code
   
end


# Main progream loop

loop do 
   puts ""
   puts "Do you want to lookup a city name? (Y/N)"
   
   answer = gets.chomp
   
   if answer.capitalize != "Y"
      break
   end
   
    
   valid, city_name = getCity(dial_book)
   
   if valid
      areaCode = getAreaCode(city_name, dial_book)
      puts ""
      puts "Area code for #{city_name} is #{areaCode}"
   else
      puts "That was not a valid city choice..."
      puts ""
   end
end
