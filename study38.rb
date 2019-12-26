# Object Oriented Programming (OOP)

      # language organized around objects rather than actions and data rather than logic.
      # it's about the objects we want to manipulate vs. the logic required to manipulate them.
      # objects: humans (name, address, etc...); buildings (properties); computer desktop (buttons and scroll bars)
      # data modeling = identifying objects for use and how they relate
      # after identification th object is "generalized" as a class of objects. i.e. plato's ideal chair that stands for all chairs.
      # classes help define subclasses, which share some or all of the main class characteristics (inheritance)
      # an instance of a class is an object; when an instance is run the code can't accidentally access other program data (data hiding), adds security.
      # definition of a class is reuseable by the program for which it was created and other object oriented programs.
      # data classes allow us to create any new data type that is not already defined in the language itself (i think this means making functions using the logic already innate in the language)
      # there's overriding and overloading
          # overriding is when 2 methods in a class have the same name and parameters
          # overloading is when they have the same name but different parameters


# Examples of Real World Things that Fit into Arrays
          # Deck of Cards
          # Addresses
          # Inventories or lists of products
          # phone numbers
          # rosters
          # accounts (like azros has a list or an array i'm assuming of accounts specified by the name on the account)
          # bank account informations
          # email address data bases
          puts "input your email"
          email = []

          while email.length < 3
            print '> '
            eaddress = $stdin.gets.chomp
            email.push(eaddress)
            puts "#{email}"
          end

          # parts for manufacturers
          def adjust_inventory
            if @reply =~ /yes/ || ~/Yes/ || ~/YES/
              puts "which part are you selling?"
              print '> '
              part = $stdin.gets.chomp
              check = @parts.include?(part)
                if check == true
                  newparts = @parts - [part]
                  puts "the inventory is now #{newparts}"
                else
                  puts "That part is not in inventory."
                end
            else
              puts "Then go sell something!"
            end
          end

          @parts = ["a", "b", "c", "d", "e", "f"]

          puts "are you selling a part?"
          print '> '
          @reply = $stdin.gets.chomp

          adjust_inventory
          # Market information like prices or chart patterns?
          # scientific data sets from research
          #
  # Classes
          # class is a blueprint from which individual objects are created
          # i.e. my bike is an instance of the class of objects known as bicycles
          # i.e. Class Vehicle: wheels, horsepower, fuel/gas tank capacity --> the characteristics help "differentiate" one vehicle from another
          # *Class--> combination of characteristics and functions*
          class Vehicle {
            Number no_of_wheels
            Number horsepower
            Characters type_of_tank
            Number Capacity
            Function speeding{
            }
            Function driving{
            }
            Function halting{
            }
          }
# Local Variables--> variables defined in a method
# Instance Variables--> variables usable across methods; instance variables change from object to object; preceded by @
# Class Variables--> usable across different objects; it's a characteristic of a class; preceded by @@
# Global Variables--> usable across classes; preceded by $

        class Customer
          @@no_of_customers = 0
        end
# Creating objects in classes using new method
      # new belongs to the class methods
      cust1 = Customer.new
      cust2 = Customer.new
    # you can pass parameters to new; you need to declare method initialize at time of class creation
      class no_of_customer
        @@no_of_customers = 0
        def initialize(id, name, addr)
          @cust_id = id
          @cust_name = name
          @cust_addr = addr
        end
      end
      cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
      cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

      class Sample
        def function
          statement 1
          statement 2
        end
      end
      class Sample
        def hello
          puts "Hello Ruby!"
        end
      end

      # Now using above class to create objects
      object = Sample.new
      object.hello
