require "pry"

require_relative "animal"
require_relative "client"
require_relative "shelter"

# a1 = Animal.new("Spot","dal",2,"m","bones")
# a2 = Animal.new("Patch","dal",3,"f","bones")
# c1 = Client.new("jane",22,"f",0)
# c2 = Client.new("Ralph",1200,"m",0)

s1 = Shelter.new("happitails")

# def animal_intake
#     print "Name: "
#     name = gets.chomp
#     print "Breed: "
#     breed = gets.chomp
#     print "Age: "
#     age = gets.chomp
#     print "Gender: "
#     gender = gets.chomp
#     print "Favorite Toy: "
#     favtoy = gets.chomp
#     s1.animals[name] = Animal.new(name,breed,age,gender,favtoy)
#     puts "#{s1.animals[name]} has been added to the list of animals"
# end

# def client_intake
#     print "Name: "
#     name = gets.chomp
#     print "Age: "
#     age = gets.chomp
#     print "Gender: "
#     gender = gets.chomp
#     print "Number of children: "
#     num_kids = gets.chomp
#     s1.clients[name] = Client.new(name, age, gender, num_kids)
#     puts "#{s1.clients[name]} has been added to the directory of clients"
# end






puts "Enter (1) an animal (2) a client"
puts "See a list of (3) animals (4)clients"
puts "(5) adopt animal (6) donate an animal"
puts "(7) quit:"
choice = gets.to_i

while choice != 7

    puts `clear`
    if choice == 2
        print "Name: "
        name = gets.chomp
        print "Age: "
        age = gets.chomp
        print "Gender: "
        gender = gets.chomp
        print "Number of children: "
        num_kids = gets.chomp
        s1.clients[name] = Client.new(name, age, gender, num_kids)
        puts "#{s1.clients[name]} has been added to the directory of clients"
    elsif choice == 1
        print "Name: "
        name = gets.chomp
        print "Breed: "
        breed = gets.chomp
        print "Age: "
        age = gets.chomp
        print "Gender: "
        gender = gets.chomp
        print "Favorite Toy: "
        favtoy = gets.chomp
        s1.animals[name] = Animal.new(name,breed,age,gender,favtoy)
        puts "#{s1.animals[name]} has been added to the list of animals"
    elsif choice == 6
        puts "Please enter info on the donated animal"
        print "Name: "
        name = gets.chomp
        print "Breed: "
        breed = gets.chomp
        print "Age: "
        age = gets.chomp
        print "Gender: "
        gender = gets.chomp
        print "Favorite Toy: "
        favtoy = gets.chomp
        s1.animals[name] = Animal.new(name,breed,age,gender,favtoy)
        puts "#{s1.animals[name]} has been added to the list of animals"
        print "Name of person donating animal: "
        cname = gets.chomp
        s1.clients[cname].pets.pop
        puts "#{s1.animals[name]} has been added to the list of animals and #{s1.clients[cname]}'s info has been updated."
    elsif choice == 5
        puts s1.animals.values
        print "Name of the animal being adopted: "
        animal_name = gets.chomp
        puts s1.clients.values
        print "Name of the person adopting the animal: "
        client_name = gets.chomp
        s1.animal_adopted(animal_name, client_name)
        puts "#{animal_name} was removed from the list of animals and #{client_name}'s info has been updated."
    elsif choice == 3
        puts "Here is a list of available animals:"
        puts s1.animals.values
    elsif choice == 4
        puts "Here is a list of current clients:"
        puts s1.clients.values
    end

puts "Enter (1) an animal (2) a client"
puts "See a list of (3) animals (4)clients"
puts "(5) adopt animal (6) donate an animal"
puts "(7) quit:"
choice = gets.to_i
end

