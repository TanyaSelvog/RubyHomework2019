# March Work

# 3/4/19 Polymorphism

class Animal
    attr_accessor :name

    def initialize(name)
        @name = name
    end
end

class Cat < Animal
    def talk
        "Meoowww!"
    end
end

class Dog < Animal
    def talk
        "Wooofff!"
    end
end

animals = [Cat.new("Sparrow"), Dog.new("Ada"), Cat.new("Neffie")]
animals.each do |animal|
    puts animal.talk
end
