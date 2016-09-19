#Hash dictionary to store our cities and corresponding area codes
#Please suggest me better solutions and I want to learn from you.
#Felt like using global variables-My bad.
$dial_book = {
  "Hyderabad"=>"45",
  "Pune"=>"56",
  "Mumbai"=>"32",
  "Chennai"=>"45",
  "Delhi"=>"67",
  "Kolkata"=>"89",
  "Bengaluru"=>"12",
  "Kochi"=>"1",
  "Amaravathi"=>"22",
  "Gangtok"=>"213"
}
#Method to show the city names as a list for the User
def showcitynames
  puts "These are the City Names"
  $dial_book.each do |name|
    puts "#{name}"
  end
  getareacode
end
#method to get areacode,dial_book and the cityname
def getareacode
  puts "Please select a City Name from the above list"
  cityname = gets.chomp
  code = $dial_book.select{|k,v| k==cityname}
  puts "The Area Code is #{code[cityname]}"
end
#loop functionality down called definition showcitynames
loop do
  puts "Do you want to lookup a cityname?(Y/N)"
  answer = gets.chomp
  if answer != "Y"
    break
  else
    showcitynames
  end
end
#End of Area Code dictionary
