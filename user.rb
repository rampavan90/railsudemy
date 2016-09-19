module Destructable
  def destroy(anyobject)
    puts "Now,I will destroy the object"
  end
end
class User
attr_accessor :name, :email
include Destructable

  def initialize(name,email)
    @name = name
    @email = email
  end
  def run
    puts "I am running!"+@name
  end
def self.identify_yourself
  puts "Hey this is a class method"
end

end
#Classes constructed using Inheritance
class Buyer < User
end

class Seller < User
end

class Admin < User
end
user = User.new("Pavan","rampavan90@gmail.com")
puts "The Users name is #{user.name} and email is #{user.email}"
#puts User.ancestors
user.name = "fgv"
user.email = "ram@gmail.com"
puts "Changed User name is #{user.name} and changed user email is #{user.email}"

buyer1 = Buyer.new("rambuy","rampajs@gmail.com")
buyer1.run

puts Buyer.ancestors
User.identify_yourself

usr = User.new("poop","yourpoopmail")
usr.destroy("pavan")

