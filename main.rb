require "pry"

require_relative "animal"
require_relative "client"
require_relative "shelter"

# a1 = Animal.new("Spot","dal",2,"m","bones")
# a2 = Animal.new("Patch","dal",3,"f","bones")
# c1 = Client.new("jane",22,0)
# c2 = Client.new("Ralph",1200,0)

s1 = Shelter.new("happitails")



print "Enter an (a)nimal or a (c)lient or (d)onation or (b) adopt or (q)uit: "
choice = gets.chomp.downcase

while choice != "q"
  if choice == "c"
    print "Name: "
    name = gets.chomp
    print = "Age: "
    age = gets.chomp
    print = "Gender: "
    gender = gets.chomp
    print = "Number of children: "
    num_kids = gets.chomp
    s1.clients[name] = Client.new(name, age, gender, num_kids)
  elsif choice == "a"
    print "Name: "
    name = gets.chomp
    print "Breed: "
    name = gets.chomp
    print = "Age: "
    age = gets.chomp
    print = "Gender: "
    gender = gets.chomp
    print = "Favorite Toy: "
    favtoy = gets.chomp
    s1.animals[name] = Animals.new(name,breed,age,gender,favtoy)
  elisf choice == "d"
    s1.animal_donated()

  end

print print "Enter an (a)nimal or a (c)lient or (d)onation or (b) adopt or (q)uit: "
choice = gets.chomp.downcase
end




binding.pry
