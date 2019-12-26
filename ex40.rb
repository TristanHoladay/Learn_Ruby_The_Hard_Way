 # Modules, Classes, and Objects

  # Modules are like Hashes
      # get x from
              # this is in mystuff.rb
              module MyStuff
                  def MyStuff.apple()
                    puts "I AM APPPLES"
                  end

                  TANGERINE = "Living reflection of a dream"
                end

                require "./mystuff.rb"

                MyStuff.apple()
                puts MyStuff::TANGERINE
    # Classes are like Modules
      # modules are specialized hashes that store code; Classes take a grouping of functions
              class Mystuff

                  def initialize()
                    @tangerine = "And now a thousand years between"
                  end

                  attr_reader :tangerine

                  def apple()
                    puts "I AM CLASSSY APPLES!"
                  end
                end
 #***** you can create millions of a "x" class and they won't interfere with each other, but in importing a module thre is only one for the entire program unless you do some big!! hacks

 # Objects
      # when you instantiate (create) a class you get an object, you create a class by calling the new function
            # i.e.
                    thing = MyStuff.new() # instantiate operation
                    thing.apple()
                    puts thing.tangerine
              # ruby looks for MyStuff and sees it is a class you defined
              # it crafts an empty object with all the funtions you've specified in the class using def b/c you did MyStuff.new()
              # looks to see if you made the initialize function, and if you did it calls that function to initialize your newly created empty Object
 ### STUDY DRILL NOTES###

      # CamelCase --> for classes
      #snake_case --> for methods or file names
      # you have to initialize a class
      # there are getter methods and setter methods
      # getter and setter methods can take up a lot of room, so Ruby gives us attr_accessor method
          #attr_accessor
                    class GoodDog
                      attr_accessor :name

                      def initialize(name)
                        @name = name
                      end

                      def speak
                        "#{@name} says arf!"
                      end
                    end

                    sparky = GoodDog.new("Sparky")
                    puts sparky.speak
                    puts sparky.name   # => "Sparky"
                    sparky.name = "Spartacus"
                    puts sparky.name # => "Spartacus"

                    # ** it took a symbol for the argument
                    # *** attr_reader gives just the getter method
                    #*** attr_writer gives just the setter method
                    # Can also do this
                          attr_accessor :name, :height, :weight
                    # can use this to change the state of an Object
                    # also you can use it instead of direct reference to an instance variable
                    # i.e.
                    def speak
                      "#{@name} says arf!"
                    end
                    # can be
                    def speak
                      "#{name} says arf!" # calling the instance method instead of the variable
                    end
                    # this is helpful when you don't want to expose raw data (e.g. social security numbers) and if you might have to change the format when dealing with a lot of data.
                    # line 73 (above)  has six instance methods
                        # name, name=, height, height=, weight, weight=
                        # and 3 instance variables --> @name, @height, @weight
                    # what if we want a method that changes several states at once
                          # i.e. change_info(n, h, w)
                            def change_info(n, h, w) # this is one way
                              @name = n
                              @height = h
                              @weight = w
                            end
                    # *** just remember that when you add more variables they have to be initialized
                          # so the initialize method becoems
                              def initialize(n, h, w)
                                @name = n
                                @height = h
                                @weight = w
                              end
                    # just like getter method we can access the setter method so...
                    def change_info(n, h, w) #*** this creates 3 new local variables though!!!!
                      name = n
                      height = h
                      weight = w
                    end
                    # ***NEED TO USE self.name= ***
                    def change_info(n, h, w)
                      self.name = n
                      self.height = h
                      self.weight = w 
                    end
                    # you can do the same for the getter method but it's not necessary
