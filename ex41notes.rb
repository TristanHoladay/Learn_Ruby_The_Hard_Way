              # WORD DRILLS
        # class --> tell Ruby to make a new type of thing
        # object --> two meanings: the most basic type of thing, and any instance of some thing
        # instance --> what you get when you tell Ruby to create a class
        # def --> how you define a function inside a class
        # @ --> inside the functions in a class, @ is a variable for the instance/object being accessed
        # inheritance --> concept one class can inherit traits from another class, much like a child from parents
        # composition --> the concept that a class can be composed of other classes as parts, much like how a car has wheels
        # attribute --> a property classes have that are from composition and are usually variables
        # is-a --> a phrase to say that something inherits from another, as in a "salmon" is-a "fish"
        # has-a --> a phrase to say that something is composed of other things or has a trait, as in "a salmon has-a mouth"


            # PHRASE DRILLS
        # class X < y
                # "Make a class X that is-a Y"
        # class X: def initialize(J)
                # "class X has-a initialize that takes J as a parameter"
        # class X: def M(J)
                # class X has-a function named M that takes J as a parameter"
        # foo = X.new()
                # "Set foo to an instance of class X"
        # foo.M(J)
                # "From foo, get the M function, and call it with parameter J." --> getter method
        # foo.K = Q
                # "From foo, get the K attribute, and set it to Q" --> setter method



      # .scan(pattern) -> array or .scan(pattern) {|match, ...| block} -> string --> both forms iterate through str, matching the pattern.
                          p a = "cruel world"
                          p a.scan(/\w+/)
                          p a.scan(/.../) # 3 characters including spaces make up each index in 1 array
                          p a.scan(/(...)/) # 3 characters including spaces become they're own array inside the array
                          p a.scan(/(..)(..)/) # 2 characters including spaces become index 0 and 1 in their own array within the main array

                          p a.scan(/\w+/) {|w| print "<<#{w}>>"}
                          print "\n"
                          p a.scan(/(.)(.)/) {|x,y| print y, x}
                          print "\n"



                # %Q --> double-quoted strings >> %Q(Joe said: "Frank said: "#{what_frank_said}"")
                # %q --> single-quote strings >> %q(Joes said: 'Frank said: '#{what_frank_said}' ')
                # %W --> double-quoted array elements >> %W(#{foo} Bar Bar\ with\ space) => ["foo", "Bar", "Bar with space"]
                # %w --> single-quoted array elements >> %w(#{foo} Bar Bar\ with\ space) => ["\#{foo}", "Bar", "Bar with space"]
                # %r --> used for regexp, sytanx similar to %Q >> %r(/home/#{foo}) => "/\\/home\\/Foo/"
                # %s --> used for symbols. it's not subject to expression substitution or escape sequences >> %s(foo) => :foo ; %s(foo bar) => :"foo bar" ; %s(#{foo} bar) => :"\#{foo} bar"
