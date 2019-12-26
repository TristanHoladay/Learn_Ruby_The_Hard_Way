# What is Inheritance? #
  # indicates that a class with get most or all of its features from a parent class.
  # class Foo < Bar --> means if any actions done on instances of Foo also work as if done to an instance of Bar
      # actions on the child imply an action on the parent
      # actions on the child override the actions on the parent
      # actions on the child alter the action on the parent


      class Dog

        def dog
          puts "I'm a dog!"
        end
      end

    class Tye < Dog

      def tt
        puts "I'm a TT."
      end
    end

    a = Dog.new
    b = Tye.new

    a.dog
    b.dog

    class Dog

      def dog
        puts "I'm a dog!"
      end
    end

    class Tye < Dog

    def dog
      puts "I'm a TT."
    end
    end

    a = Dog.new
    b = Tye.new

    a.dog
    b.dog


    class Dog

      def dog
        puts "I'm a dog!"
      end
    end

    class Tye < Dog

    def dog
      puts "I'm a TT."
      super
    end
    end

    a = Dog.new
    b = Tye.new

    a.dog
    b.dog

class Parent

  def override()
    puts "Parent override()"
  end

  def implicit()
    puts "Parent implicit()"
  end

  def altered()
    puts "Parent altered()"
  end
end

class Child < Parent

  def override() # overriding the override method in Parent
    puts "Child override()"
  end

  def altered() # altering the altered method of Parent by adding something yet calling on the original method with super
    puts "Child, Before Parent altered()"
    super()
    puts "Child, After Parent, altered()"
  end
end

dad = Parent.new
son = Child.new

dad.implicit()
son.implicit()

dad.override()
son.override()

dad.altered()
son.altered()

# Using super with initialize
    # the most common use of super() is in initialize in base classes. i.e.
      class Child < Parent
        def initialize(stuff) # setting some variables in the initialize before having Parent initialize w/ Parent.initialize
          @stuff = stuff
          super()
        end
      end

# COMPOSITION #

  # using other classes or modules to do what inheritance can do
     # i.e.
            class Other

              def override()
                puts "OTHER override()"
              end

              def implicit()
                puts "OTHER implicit()"
              end
            end

            class Child
              def initialize() # using the initialize to create an instance of another class
                @other = Other.new() # i've already done some of this!!
              end

              def implicit()
                @other.implicit()
              end
              def override()
                puts "CHILD override()"
              end

              def altered()
                puts "CHILD< BEFORE OTHER altered()"
                @other.altered()
                puts "CHILD, AFTER OTHER altered()"
              end
            end

            son = Child.new

            son.implicit()
            son.override()
            son.altered()

# You can also do composition with modules. You create a module with functions that are common to classes and then include them in your class like using require
      # i.e.
              module Other

                def override()
                  puts "OTHER override()"
                end

                def implicit()
                  puts "OTHER implicit()"
                end

                def Other.altered()
                  puts "OTHER altered()"
                end
              end

              class Child
                include Other

                def override()
                  puts "CHILD override()"
                end

                def altered()
                  puts "CHILD, BEFORE OTHER altered()"
                  Other.altered()
                  puts "CHILD, AFTER OTHER altered()"
                end
              end

              son = Child.new

              son.implicit()
              son.override()
              son.altered()

    # WHEN TO USE INHERITANCE VS COMPOSITION #

        # avoid "meta-programming" -->

        # use composition to package code into modules that are used in many different unrelated places and situations

        # use inheritance when there are clearly related reusable pieces of code that fit under a single common concept
