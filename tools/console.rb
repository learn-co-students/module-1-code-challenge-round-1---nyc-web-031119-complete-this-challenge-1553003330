require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

oscar = Customer.new("Oscar", "Rios")
nani = Customer.new("Nani", "Shoultz")
mich = Customer.new("Mich", "Smith")

lulu = Restaurant.new("lulu")

find_by_name(oscar)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
