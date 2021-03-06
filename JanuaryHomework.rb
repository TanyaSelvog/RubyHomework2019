#Ruby Notes and Studying for January 2019; Beginning Ruby: From Novice to Professional by Peter Cooper


#January 1, 2019; creating 3 classes and 3 objects and create 3 methods and call 3 methods


#1
class Pet
    attr_accessor :length, :age, :name
end

#2
class Minion
    attr_accessor :cost, :attack, :health, :name
end


#3 
class Movie
    attr_accessor :genre, :year, :director, :name
end



#1/1-4

dog = Pet.new
dog.age = 2
dog.length = 30
dog.name = "ada"

#2/1-4

minon= Minon.new
minion.cost = 8
minion.attack = 8
minion.health = 8
minion.name = "Lich King"


#3/1-4
new_instance_movie = Movie.new
new_instance_movie.name = "LEGO Ninjago"
new_instance_movie.genre = "family"
new_instance_movie.year = 2017
#can I have more than one data point for this?
new_instance_movie.director = "Charlie Bean", "Paul Fisher"


#1/create and call a method
class Pet
    def bark
      puts “Woof!”
    end
  end

#call method

my_dog = Pet.new
my_dog.bark
#returns: Woof!

#2/create and call a method
class Minion
    def attack_call
        puts "Attack!"
    end
end

#call method
minion.attack   
#returns the Lich King's object and puts/prints "Attack!"


#3/create and call a method
class Movie
    def accolades
        puts "This movie is awesome!"
    end
end

#call method (example one)
titanic = Movie.new
titanic.accolades
#returns "This movie is awesome!"


#call method (example two)
new_instance_movie.accolades
#returns "This movie [LEGO Ninjago} is awesome!"


#January 7, 2019 - create a class, create a method and call a method; then play around with String class

class Cat
    attr_accessor :age, :color, :name
end

sparrow = Cat.new
sparrow.age = 10
sparrow.name = "Sparrow Lucy-Fur"
sparrow.color = "tuxedo"

class Cat
    def meows
        puts "meow"
    end
end

sparrow.meows
#returns "meow"

#String class
"tacocat is cool".reverse 
#returns "looc si tacocat"

"test".chop
#returns "tes"

"tanya".capitalize.chop
#returns "Tany"


#January 8, 2019 - Ruby Review (chapter 2)

#create a class

class Hero
    attr_accessor :name, :gender, :ability
end


#create a new object

sparrow_lucyfur = Cat.new

#create a method and call it

class Cat 
    def hiss
        puts "hissssss!!"
    end
end

sparrow_lucyfur.hiss
#returns "hissssss!!"


#January 12, 2019 Comparisons in Ruby

x > y #greater than
x < y #less than
x == y #equal to
x>=y #greater than or eqaual to
x<=y #less than or equal to
x<=>y #comparison; returns 0 if x and y are equal; returns 1 if x is higher; returns -1 if y is higher
x !=y #not equal to

#January 13, 2019 Floating Point numbers

#any number w/o a floating point is an integer in Ruby

puts 10/3
#returns 3

puts 10.0/3.0
#returns 3.33333

x = 10
y = 3
puts x.to_f/y.to_f
#returns 3.33333

puts 5.7.to_i
#returns 5

puts 9.98.to_i
#returns 8


#January 17, 2019 - flow control

#elsif example
fruit = "orange"
if fruit == "orange"
    color = "orange"
elsif fruit = "lemon"
    color = "yellow"
elsif fruit = "blueberry"
    color = "blue"
else
    color = "unknown"
end


#case example
fruit = "orange"
case fruit
    when "orange"
    color ="orange"
    when "lemon"
    color ="yellow"
    when "blueberry"
    color ="blue"
    else
    color ="unknown"
    end

#simpler Ruby case example
fruit = "orange"
color = case fruit
    when "orange"
    "orange"
    when "lemon"
    "yellow"
    when "blueberry"
    "blue"
    Else
    "unknown"
    end



#January 23, 2019

#Time class in Ruby

puts Time.now
#output: 2019-01-23 12:21:59 -0800



