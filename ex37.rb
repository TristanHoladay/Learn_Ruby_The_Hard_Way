# BEGIN-- BEGIN {puts "hi"}-- executed before anything else and without regard for conditions around it.
# END -- end {puts "hi"}-- used to end that BEGIN code.
# alias and -- alias x y - *alias_method --used to override behavior of method without changing origin of implementation   alias_method (new_name, old_name) **the difference = alias x y associates x for y in that method alone, whereas alias_method associates x for y in each method (i think)   # puts "hello" and "goodbye"
# begin-- begin end -- used within a method to run a bunch of code that needs to run on its own.** a def method_name implicitly has the begin end block.
# break case-- while true; break; end -- will exit the loop
          a = [1,2,3]                        a = [1,2,3]
          a.each do |num|                    a.each do |num|
            break if num < 2                    break num if num < 2  # passing arg to break which returns the num < 2 as output instead of nil.
            puts num                            puts num
          end                                end
 #  case x; when y; else; end ** this is the same as making if else statements, however it can simplify the code a bit.
      print "enter your grade"
      grade = gets.chomp
      puts case grade
      when "A", "B"     # you can put multiple conditions with "when", you can put "puts" before case and it will print the last thing to return; you don't have to give the case a name, but can simply put case
        'You pretty smart!'
      when "C", "D"
        'You pretty dumb!!'
      else
        "You can't even use a computer"
      end
#class -- class x; end -- Class is a first-class object that has methods pertaining to a certain behavior; interrelated with modules and objects # def -- def x(); end *you are "defining" a method # defined?-- defined? Class == "constant" -- tests if expression refers to anything recognizable
                  class Name
                    # some code describing the class behavior
                  end
# do-- (0..5).each do |x| puts x end -- delimits a code block **do/end is == to {} i.e. puts [1,2,3].map {|x| x * 10}
# else -- if x; else; end # elsif -- if x; elsif y; else; end
# end -- begin end # many others
# ensure -- begin ensure end -- written at same level as method sig. It ensures a piece of code will always run, starting the code when an exception is raised.
            begin
              1/0
            rescue ZeroDivisionError
              puts "Can't do that!"
            ensure
              puts "That was fun!"
            end
# for -- for x in y; end
            for a in [1,2,3,4,5] do
              puts a * 10
            end

# if -- if x; end
# in -- for x in y; end
# module -- module x; end-- makes a module definition block; takes a constant (name of module) as its argument; starts new local scope; existing variables are not visible inside the block and local variables created in the block do not survive the end of the block.
 # next -- (0..5).each {|y| next}
# not -- not true == false # or -- puts "hello" or "goodbye"
# redo -- (0..5).each {|i| redo if i>2}--re-execution of code block with same parameter bindings as current execution
# rescue-- begin rescue X; end-- handles exceptions and takes a single argument: the class/type of error that you want to rescue from. it is written on the same level as the method signature (in line with the "def"). If you don't give it parameters it will default to StandardError
# retry  -- (0..5).each {|i| retry if i>2} -- returns to top of enclosing code (begin or top of method or block)
# return -- return x
# self -- defined? self=="self" this is a weird concept to me at the moment
# super -- super -- searches method look up path for the next method of the same name as the one being executed.
            module Vehicular
              def move_forward(n)
                @position +=  n
              end
            end
            class Vehicle
              include Vehicular # adds vehicular to the lookup path
            end
            Class Car < Vehicle
            def move_forward(n)
              puts "vroom!"
              super    # calls Vehicular#move_forward
            end
          end

# then-- if true then puts "Hi" end --then is not mandatory of if, unless, or when statements
    if a > b; puts "a wins!" end
    if a > b then puts "a wins!" end # these are equivalent
# undef -- undef x -- undefines given method for class or module in which it's called
    Class C
    def m
      "hi"
    end
  end
  Class D < C
end
Class E < D
end
 class D
   undef m
 end

 c.new.m #Hi
 D.new.m # error
 E.new.m # error
# unless -- unless false then puts "not" end -- negative equivalent of if
        unless y.score > 10
          puts "sorry; ...."
        end

# until -- until false; end -- the inverse of while
# when -- case x; when y; else; end
# while -- while true; end
  i = 0                       i = 0
  while i < 10                begin
    i += 1                      i += 1
  end                           puts i
                           end while i < 10
# yield -- yield -- passing one block to a method *he defines it as "pause and transfer control to the code block"
    def calculation(a,b, operation)
      operation.call(a,b)
    end
    puts calculation(5,6, lambda { |a,b| a + b})
    puts calculation(5,6, lambda {|a,b| a - b})

    def calculation(a,b)
      yield(a,b)
    end
    puts calculation(5,6) { |a,b| a + b}
    puts calculation(5,6) {|a,b| a - b}
# next -- will enter the next iteration without further evaluation i.e.
            a = [1, 2, 3]                         a =[1,2,3]
            a.each do |num|                       a.map do |num|
              next if num < 2                       next 'even' if num.even? # output is  [1, "even", 3]
              puts num                              num
            end   #output is 2 3                  end

   # DATA TYPES #

   # true -- true or false == true
   # false -- false and true == false
   # nil -- x = nil-- absence or indeterminacy
   # string -- x "hello"
   # numbers -- i = 100
   # floats -- i = 10.389
   # arrays -- j = [1,2,3,4]
   # hashes -- e = {'x' => 1, 'y' => 2}

   # STRING ESCAPE SEQUENCES #

   # \\ - backslash
   # \' - single quote
   # \" - double quote
   # \a - Bell
   # \b - backspace
   # \f - formfeed
   # \n - newline
   # \r - carriage
   # \t - tab
   # \v - Vertical tab

    # OPERATORS #

    # + -add
    # - -subtract
    # * -multiply
    # ** -power of
    # / -divide
    # % -modulus-->divides the left hand operand by right hand operand and returns remainder
    # > -greater than
    # . -dot access
    # :: -colon access --> a unary operator that allows: constants, instance methods, and class methods defined within a class or module, to be accessed from anywhere outside the class or module.
    # [] -list brackets
    # ! -not
    # < -less than
    # > -Greater than
    # >= -greater than equal
    # <= -less than equal
    # <=> -comparison --> returns 0 if a = b; 1 if a > b; -1 if a < b
    # == -equal --> check is value of two operands are equal
    # .eql? --> true if receiver and argument have both same type and equal values --> 1 == 1.0 returns true, but 1.eql?(1.0) is false
    # equal? --> true if receiver and argument have the same object id--> if aObj is duplicate of bObj then aObj == bObj is true, a.equal?bObj is false but a.equal?aObj is true.
    # === equality --> tests equality within a when clause of a case statment --> (1..10) === 5 returns true
    # != not equal
    # && - logical and (higher precedence)
    # || -logical or (higher precedence)
    # .. -range inclusive
    # ... -range non-inclusive
    # @ -object scope---can use object anywhere within the script or class (i think)
    # @@ -class scope---i think this means you can call on classes in other classes or scripts
    # $ - global scope---i think this means you can use something that is catergorized above everything

        # BINARY OPERATORS #
        # & --> copies a bit to the result if it exists in both operands
        # | --> binary OR, copies bit to result if it is in either operand
        # ^ --> Binary XOR copies the bit if it is set in one operand but NOT BOTH
        # ~ --> Binary Ones Complement is unary and has the effet of 'flipping' bits
        # << --> Binary Left Shift: left operand's value is moved left by the number of bits specified by the right operand
        # >> --> Binary Right Shift: left operand's value is moved right by the number of bits specified by the right operand

        for ((i=0; i<$n; i+=1)); do # saw this in a code online. that's interesting.
    			cd "$root/test/project"
    			chruby_auto
    			cd ../../
    			chruby_auto
    		done
