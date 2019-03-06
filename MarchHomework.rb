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


# 3/5/19

class Animal
    attr_accessor :name

    def initialize(name)
        @name = name
    end
end

class Cow < Animal
    def talk
        "Moo"
    end
end

class Sheep < Animal
    def talk
        "Baaa"
    end
end

