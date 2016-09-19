#create a dictionary which is also a hash with 10 city names cityname is str and area code is value
cities = ["Copenhagen","StockHolm","Helsinki"]

filter = cities.select{|item|  item=="StockHolm" }

puts "#{filter}"



