require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tree = Cult.new("TreePeople", "SF", 2018, "Trees r cool")
boba = Cult.new("Bobaists", "Bay Area", 1994, "love boba")

will = Follower.new("Will", 30, "i like coding")
joseph = Follower.new("Joseph", 25, "coding is fun")
megan = Follower.new("Megan", 27, "yay")

boba_joseph = BloodOath.new(joseph, boba, "1994-11-28")
tree_will = BloodOath.new(will, tree, "2019-11-04")
boba_megan = BloodOath.new(megan, boba, "2019-11-03")


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
