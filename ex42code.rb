class Animal
    def self.name
      puts "What kind of animal is this?"
      print '> '
      @animal_type = $stdin.gets.downcase.chomp #.downcase erases the need to include different cases of the answer in the if statements
    if @animal_type =~ /dog/
       @animal_type = Dog.new
    elsif @animal_type =~ /cat/
       @animal_type = Cat.new # accidentally left a . after new which was causing the reader to think i was calling else as a method of Cat.new
    else
      puts "That's not an animal!"
      exit (0)
    end
  end
end

## dog is-a class that is-a Animal so it is a more narrowly defined set of attributes, but it shares major attributes with the Animal class
class Dog < Animal

  def initialize
    puts "What is the dog's name?"
    print '> '
    @name = $stdin.gets.chomp
    puts "Great the dog's name is #{@name}!"
  end

  def bark
    puts "#{@name} barks at squirrels."
  end

end


## Cat is-a Animal and is-a class, see notes on dog
class Cat < Animal

  def initialize
    puts "What is the cat's name?"
    print '> '
    @name = $stdin.gets.chomp
    puts "Great the cat's name is #{@name}!"
  end

end

class Person

  def initialize
    ## person has-a name object
    puts "What is this person's name?"
    print '> '
    @persons_name = $stdin.gets.chomp
    if @persons_name.length >= 4
       @person_name = Employee.new(120000)
    else
      puts "That's not a person!"
      exit(0)
    end

    ## person has-a pet of some kind
    @pet = nil
  end

attr_accessor :pet, :persons_name

  def walks
    puts "#{persons_name} likes to walk #{pet} in the mornings."
  end
end

## Employee is-a class that is-a Person, meaning it shares attributes or inherits attributes from the Person class but has additional more specific attributes
class Employee < Person

  def initialize(salary)
    ## Employee has-a initialize which has-a obj super(name)
    #super(name) # super allows you to use and override or replace the @name from the Person Class
    ## initialize has-a object @salary
    @salary = salary
  end

  attr_accessor :salary, :job, :persons_name # this worked to call on the super(name) which calls on the class Person

  def personal_info
    puts "#{persons_name} works at #{job} has a salary of #{salary}."
  end
end

## Fish is-a class
class Fish
end

## Salmon is-a class and is-a Fish, inherits attributes from Fish and has extras
class Salmon < Fish
end

## Halibut is-a Fish and is-a class
class Halibut < Fish
end

Animal.name


## mary is-a person
mary = Person.new

## Frank is-a Employee and is-a Person
person = Person.new
person.personal_info

## frank has-a pet that is-a rover
person.pet = "rover"
person.walks


## flipper is-a fish
flipper = Fish.new()

## crouse is-a Salmon and is-a Fish
crouse = Salmon.new()

## harry is-a Halibut and is-a Fish
harry = Halibut.new()
