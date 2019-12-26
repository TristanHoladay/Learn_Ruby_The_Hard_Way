# STYLE GUIDE #

# single-line format for class definitions with no body
    # i.e. okish --> class FooError < StandarError; end
          # good --> FooError = Class.new(StandardError)

# Don't use single-line methods unless it's an empty body method
        # bad --> def too_much; something; something_else; end

        # good --> def some_method
                      # body
                  #end

 # Use spaces
  # except for exponent operator --> e = M * c**2 is good
  # or in rational literals --> o_scale = 1/48r is good
  # or safe navigation operator --> foo&.bar is good

  # Use spaces around {} but not (), []
      # but not with interpolated expressions i.e #{user.first_name}

  # no space after !
        # good --> !something

  # Indent when same as case
        case
        when ....
        when ....

# assigning result of conditional to a variable preserve the alignment of its branches

kind = case year
     when 1850..1889 then 'Blues'
     when 1890..1909 then 'Ragtime'
     when 1910..1929 then 'New Orleans Jazz'
     when 1930..1939 then 'Swing'
     when 1940..1950 then 'Bebop'
     else 'Jazz'
     end

result = if some_cond
         calc_something
       else
         calc_something_else
       end

# or

kind =
  case year
  when 1850..1889 then 'Blues'
  when 1890..1909 then 'Ragtime'
  when 1910..1929 then 'New Orleans Jazz'
  when 1930..1939 then 'Swing'
  when 1940..1950 then 'Bebop'
  else 'Jazz'
  end

result =
  if some_cond
    calc_something
  else
    calc_something_else
  end

# avoid line continuation except mainly for long strings
      long_string = 'first long part' \
                    'second long part'

# adopt consistent multi-line method chaining: Option A and Option B
      # A
          one.two.three
            .four
      # B
          one.two.three.
            four


# when method params are multi-line because one line is too long
            # starting point (line is too long)
        def send_mail(source)
          Mailer.deliver(to: 'bob@example.com', from: 'us@example.com', subject: 'Important message', body: source.text)
        end

        # bad (double indent)
        def send_mail(source)
          Mailer.deliver(
              to: 'bob@example.com',
              from: 'us@example.com',
              subject: 'Important message',
              body: source.text)
        end

        # good
        def send_mail(source)
          Mailer.deliver(to: 'bob@example.com',
                         from: 'us@example.com',
                         subject: 'Important message',
                         body: source.text)
        end

        # good (normal indent)
        def send_mail(source)  # i think i prefer this one for me understanding what's inside the method params
          Mailer.deliver(
            to: 'bob@example.com',
            from: 'us@example.com',
            subject: 'Important message',
            body: source.text
          )
        end

  # align elements of array on multi line
        # bad - single indent
menu_item = %w[Spam Spam Spam Spam Spam Spam Spam Spam
Baked beans Spam Spam Spam Spam Spam]

# good
menu_item = %w[
Spam Spam Spam Spam Spam Spam Spam Spam
Baked beans Spam Spam Spam Spam Spam
]

# good
menu_item =
%w[Spam Spam Spam Spam Spam Spam Spam Spam
Baked beans Spam Spam Spam Spam Spam]

# ADD UNDERSCORES TO LARGE NUMERIC LITERALS FOR READABILITY
      num = 1_000_000

# numeric literal pre-fixes should be lowercase
        num = 0o1234
        num = 0x12AB

# Use :: only to reference constants like classes or modules but not for regular method invocation
      # bad
       SomeClass::some_method
       some_object::some_method

       # good
        SomeClass.some_method
        some_object.some_method
        SomeModule::SomeClass::Some_CONST
        SomeModule::SomeClass()

  # Don't use :: to define class methods
            # bad --> def self::some_method
            # good --> def self.some_method

# Define optional arguments at end of list of arguments
        # bad --> some_method(a = 1, b = 2, c, d)
        # good --> some_method(c, d, a = 1, b = 2)

# for variable assignment don't do parallel but separate
        # bad --> a, b, c, d = 1, 2, 3, 4
        # good -->  a = 1
                    b = 2
                    c = 3
                    d = 4
        #Unless swapping
                a, b = b, a

        # or method return
                def multi_return
                  [1, 2]
                end

                first, second = multi_return
        # or with splat
                first, *list = [1, 2, 3, 4] # first => 1, list => [2, 3, 4]

                hello_array = *'Hello' # => ["Hello"]


  # about use of trailing underscores
        # bad
        foo = 'one,two,three,four,five'
        # Unnecessary assignment that does not provide useful information
        first, second, _ = foo.split(',')
        first, _, _ = foo.split(',')
        first, *_ = foo.split(',')


        # good
        foo = 'one,two,three,four,five'
        # The underscores are needed to show that you want all elements
        # except for the last number of underscore elements
        *beginning, _ = foo.split(',')
        *beginning, something, _ = foo.split(',')

        a, = foo.split(',')
        a, b, = foo.split(',')
        # Unnecessary assignment to an unused variable, but the assignment
        # provides us with useful information.
        first, _second = foo.split(',')
        first, _second, = foo.split(',')
        first, *_ending = foo.split(',')


# don't use for but instead each

# don't use then in if statements

# use ternary operator ( ?: ) instead of if/then/else/end
  # bad
      result = if some_condition then something else something_else end
  # good
      result = somet_condition ? something : something_else

# don't nest ternary operators on one line
 #instead do as

          if some_condition
            nested_condition ? nested_something : nested_something_else
          else
            something_else
          end

# don't do --> result = if some_condition; something else something_else
    # instead --> result = some_condition ? something : something_else

# Leverage that if and case are expression that return a result
    # so do as
          result =
            if condition
              x
            else
              y
            end

# use && and || never and\or
  # i.e.

  # bad
# boolean expression
ok = got_needed_arguments and arguments_are_valid

# control flow
document.save or raise("Failed to save document!")

# good
# boolean expression
ok = got_needed_arguments && arguments_are_valid

# control flow
raise("Failed to save document!") unless document.save

# ok
# control flow
document.save || raise("Failed to save document!")

# favor modifier if/unless when have a single-line body.
      # bad
      if some_condition
        do_something
      end

      # good
      do_something if some_condition
      # or
      do_condition && do_something

  # avoid if/unless at end of non-trivial multi-line block

        # bad
          10.times do
            # multi-line body
          end if some_condition

        # good
          if some_condition
            10.times do
              # m-l body
            end
          end

# avoid nested modifier if/unless/while/until . Favor &&/|| if appropriate
      # bad
        do_something if other_condition if some_condition
      # good
      do_something if some_condition && other_condition

# favor unless over if for negative conditions (or flow control ||)
    # bad
        do_something if !some_condition
    # good
        do_something unless some_condition
    # or
        some_condition || do_something
# don't use unless with else
# don't put parentheses around condition of a control expression
        # good
            if x > 10
              # body
            end
# don't use do after while/until conditions
    # bad
        while x > 5 do
          # body
        end
    # good
      while x > 5
        #body
      end

# favor while/until usage when you have single-line body

      # good
          do_something while some_condition

# favor until over while for negative conditions
      # good
          do_something until some_condition
# use Kernel#loop instead of while/until when you need an infinite loop
      # bad
        while true
          do_something
        end
      # good
        loop do
          do_something
        end

  # Use Kernel#loop with break rather than begin/end/until or begin/end/while for post_loop tests
      # bad
        begin
          puts val
          val += 1
        end while val < 0
      # good
        loop do
          puts val
          val += 1
          break unless val < 0
        end

# omit outer braces around implicit options hash --> passing a hash for the parameters of a method
  #bad
      user.set({ name: 'John', age: 45, permissions: {read: true} })

  # good
      user.set(name: 'John', age: 45, permission: {read: true})
# My general rule is if you either have a lot of arguments for a method
# (more than 3 or 4) or lots of optional arguments then use an options hash
# otherwise use standard arguments. However when using an options hash it is
#important to always include a comment with the method definition describing the
# possible arguments.

# omit both outer braces and parentheses for methods that are part of an internal DSL (domain specific language)
      class Person < ActiveRecord::Base
        # bad
          validates(:name, { presence: true, length: { within: 1..10 } })
        # good
          validates :name, presence: true, length: { within 1..10 }

# use the proc invocation shorthand when the invoked method is the only operation of a block
    # bad
      names.map { |name| name.upcase }
    # good
      names.map(&:upcase) # like when i would do .map(&:to_i)

# Prefer {...} over do...end
  names = %w[Bozhidar Steve Sarah]
    # bad
      names.each do |name|
        puts name
      end
    # good
      names.each { |name| puts name}
    # bad
      names.select do |name|
        name.start_with?('S')
      end.map { |name| name.upcase }
    # good
      names.select do { |name| name.start_with?('S') }.map(&:upcase)


        # safe assignmentin condition
            # bad
              if v = array.grep(/foo/)
                ...
              end
            # good
              if (v = array.grep(/foo/))
                ...
              end
            # good
              v = array.grep(/foo/)
              if v
                ...
              end

        # use shorthand self assignment operators when applicable
          # bad
            x = x + y
            x = x * y
          # good
            x += y
            x *= y
              **=
              /=
              ||= equivalent to a || a = b NOT a = a || b;
              &&=   x = x && y if x

        # use ||= to initialize variables only if they're not already initialized
            # bad
              name = name ? name : 'Bozhidar'
              name = 'Bozhidar' unless name
            # good -- set name to 'Bozhidar', only if it's nil or false
              name ||= 'Bozhidar'

        # don't use ||= to initialize boolean variables
            # bad - would set enabled to true even if it was false
              enabled ||= true
            # good
              enabled = true if enabled.nil?

        # use &&= to preprocess variables that may or may not exist. Using &&= will change the value only if it exists, removing the need to chekck its existence with if
              # bad
                if something
                  something = something.downcase
                end  # or
                something = something ? something.downcase : nil
              # ok
                something = something.downcase if something
              # good
                something = something && something.downcase
              # better
                something &&= something.downcase

        # avoid explicit use of the case equality operator ===, it's meant to be used implicitly
            # bad
              Array === something
              (1..100) === 7
              /something/ === some_string
            # good
              something.is_a?(Array)
              (1..100).include?(7)
              some_string =~ /something/

        # use == instead of eql?

        # don't use nested methods, use lambda instead
            #bad
              def foo(x)
                def bar(y)
                  ...
                end

                bar(x)
              end
            # good
              def bar(y)
                ...
              end

              def foo(x)
                bar(x)
              end

          #also good
            def foo(x)
              bar = ->(y) {...} #stabby lambda; == bar = lambda { |y| ... }
              bar.call(x)
            end

# use lambda literal syntax for single line body blocks, use lambda method for multi-line blocks
      # bad
        l = lambda { |a, b| a + b }
        l.call(1, 2)
      # correct, but looks awkward
        l = ->(a, b) do
          tmp = a * 7
          tmp * b / 50
        end
      # good
        l = ->(a, b) { a + b}
        l.call(1, 2)
        # and
        l = lambda do |a, b|
          tmp = a * 7
          tmp * b / 50
        end

  # prefer proc over Proc.new
          # bad
            p = Proc.new { |n| puts n}
          # good
          p = proc { |n| puts n }

  # prefer proc.call over proc[] or proc.() for both lambdas and procs
      # bad - looks simliar to enumeration access
        l = ->(v) { puts v }
        l[1]
      # also bad
        l = ->(v) { puts v }
        l.(1)
      # good
        l = ->(v) { puts v }
        l.call(1)

# Prefix with _ unused block parameters and local variables
    # bad
      result = hash.map { |k, v| v + 1 }
      def something(x)
        unused_var, used_var = something_else(x)
        ...
      end
    # good
      result = hash.map { |_k, v| v + 1 }
      def something(x)
        _unused_var, used_var = somethig_else(x)
        ...
      end

 # use $stdout/$stderr/$stdin instead of STDOUT/STDERR/STDIN
 # use warn instead of $stderr.puts
 # favor the use of sprintf and its alias format over the fairly cryptic String#% method

      #bad
        '%d %d' % [20, 10] # => '20, 10'
      #good
        sprintf('%d %d', 20, 10) # => '20, 10'
      # good
        sprintf('%<first>d %<second>d', first: 20, second: 10) # => '20, 10'
        format('%d %d', 20, 10) # => '20, 10'
        format('%<first>d %<second>d', first: 20, second: 10) # => '20, 10'

# when using named format string tokens, favor %<name>s over %{name} because it encodes information about the type of the value
      #bad
        format('Hello, %{name}', name: 'John')
      #good
        format('Hellp, %<name>s', name: 'John')
# favor use of Array#join over Array#* with a string argument
    #bad
      %w[one two three] * ', ' # => 'one, two, three'
    #good
      %w[one two three].join(', ') # => 'one, two, three'

# Use Array() instead of explicit Array check or [*var], when dealing with a variable you want to treat as an Array, but you're not certain it's an array.
      #bad
        paths = [paths] unless paths.is_a? Array
        paths.each { |path| do_something(path) }
      #bad
        [*paths].each { |path| do_something(path) }
      #good
        Array(paths).each { |path| do_something(path) }

# use ranges or Comparable#between? instead of complex comparison logic when possible
    #bad
      do_something if x >= 1000 && x <= 2000
    #good
      do_something if (1000..2000).include?(x)
    #good
      do_something if x.between?(1000, 2000)

# favor use of predicate methods to explicit comparisons
    #bad
      if x % 2 == 0
      end

      if x % 2 == 1
      end

      if x == nil
      end
    #good
      if x.even?
      end

      if x.odd?
      end

      if x.nil?
      end

      if x.zero?
      end

      if x == 0
      end

# don't do explicit non- nil checks unless you're dealing with boolean values
    #bad
      do_something if !something.nil?
      do_something if something != nil
    #good
      do_something if something
    #good dealing with boolean
      def value_set?
        !@some_boolean.nil?
      end

#Avoid use of BEGIN blocks

# Don't use END blocks. Use Kernel#at_exit instead
      #bad
        END { puts 'Goodbye!' }
      #good
        at_exit { puts 'Goodbye!' }

# avoid use of flip flops
      # i.e.
          ( x == y )..( x == z )
          ( x == y )...( x == z )

# avoid use of nested conditionals for flow of control

# prefer a guard clause when you can assert invalid data. a guard clause is a conditional statement at the top of a function that bials out as soon as it can.
    #bad
      def compute_thing(thing)
        if thing[:foo]
          update_with_bar(thing[:foo])
          if thing[:foo][:bar]
            partial_compute(thing)
          else
            re_compute(thing)
          end
        end
      end
    #good
      def compute_thing(thing)
        return unless thing[:foo]
        update_with_bar(thing[:foo])
        return re_compute(thing) unless thing[:foo][:bar]
        partial_compute(thing)
      end

# prefer next in loops instead of conditional blocks
    # bad
      [0, 1, 2, 3].each do |item|
        if item > 1
          puts item
        end
      end
    #good
      [0, 1, 2, 3].each do |items|
        next unless item > 1
        puts item
      end

# Prefer map over collect, find over detect, select over find_all, reduce over inject and size over length.

# don't use count as a substitute for size. For Enumerable ojbects other than Array it will iterate the entire collection in order to dtermine its size.

# use flat_map instead of map + flatten except when array has depth greater than 2
      # i.e. --> users.first.songs == ['a', ['b', 'c']]
    #good
      all_songs = users.flat_map(&:songs).uniq

# Prefer reverse_each to reverse.each


#NAMING#

  # Name identifiers in English

  # Use snake_case for symbols, methods, and variables

  # do not separate numbers from letters on symbols, methods, and variables
      # bad
        :some_sym_1
        some_var_1 = 1
        def some_method_1
        end
      # good
        :some_sym1
        some_var1 = 1
        def some_method1
        end

  # Use CamelCase for Classes and Modules

  # Aim to have a single class/module per source file. Name the file as the class/module, but replacing CamelCase with snake_case

  # Use SCREAMING_SNAKE_CASE for other constants
      #bad
        SomeConst = 5
      #good
        SOME_CONST = 5

  # names of predicate methods (methods that return a boolean value) should end with a question mark (i.e. empty?)

  # names of potentially dangerous methods (i.e. methods that modify self or arguments, exit! (doesn't run the finalizers like exit does), etc.) should end with an exclamation mark if there exists a safe version of that dangerous method
      #bad
        class Person
          def update!
          end
        end
      #good
        class Person
           def update
           end
         end
      # good
        class Person
          def update!
          end

          def update
          end
        end

  # define the non-bang (safe) method in terms of the bang (dangerous) one if possible
      class Array
        def faltten_once!
          res = []

          each do |e|
            [*e].each { |f| res << f }
          end

          replace(res)
        end

        def flatten_once
          dup.flatten_once!
        end
      end

  # when defining binary operators, name the parameter other ( << and [] are exceptions to the rule, since their semantics are different)
      def +(other)
        ...
      end

#COMMENTS#

  # Write self-documenting code and ignore the rest of this section. Seriousl!

#EXCEPTIONS#

    # prefer raise over fail for exceptions
      #bad
        fail SomeException, 'message'
      #good
        raise SomeException, 'message'

    # don't specify RuntimeError explicitly in the two argument version of raise
      # bad
        raise RuntimeError, 'message'
      #good
        raise 'message' # signals a RuntimeError by default

    # Prefer supplying an exception class and a message as two separate arguments to raise, instead of an exception instance
      #bad
        raise SomeException.new('message')
      #good
        raise SomeException, 'message'

    # don't use return in an ensure block
        #bad
          def foo
            raise
          ensure
            return 'very bad idea'
          end

    # Use implicit begin blocks where possible
        #bad
          def foo
            begin
              ...
            rescue
              ...
            end
        #good
          def foo
            ...
          rescue
            ...
          end

    # Mitigate the proliferation of begin blocks by using contingency methods
      #bad
        begin
          something_that_might_fail
        rescue IOError
          ...
        end

        begin
          something_else_that_might_fail
        rescue IOError
          ...
        end
      #good
        def with_io_error_handling
          yield
        rescue IOError
          ...
        end

        with_io_error_handling { something_that_might_fail }
        with_io_error_handling { something_else_that_might_fail }

  # don't suppress exceptions
      #bad
        begin
          ...
        rescue SomeError
          ...
        end
      #bad
        do_something rescue nil

  # avoid using rescue in its modifier form

  # Don't use exceptions for flow of control

  # Avoid rescuing the Exceptiong class
    #bad
      begin
        # calls to exit and kill signals will be caught (except kill -9)
      rescue Exception
        puts "you didn't really want to exit, right?"
      end
    #good
      begin
        # a blind rescue rescues from StandardError, not Exception as many
        # programmers assume.
      rescue => e
        ...
      end
    #also good
      begin
        ...
      rescue StandarError => e
        ...
      end

  # put more specific exceptions higher up in the chain, otherwise they'll never be rescued from
    #bad
      begin
        ...
      rescue StandarError => e
        ...
      rescue IOError => e
        ...
      end
    #good
      begin
        ...
      rescue IOError => e
        ...
      rescue StandarError => e
        ...
      end

  # release external resources obtained by your program in an ensure block
      f = file.open('testfile')
      begin
        ...
      rescue
        ...
      ensure
        f.close if f
      end

   # use version of resource obtaining methods that do automatic resource cleanup when possible
      #bad - you need to close the file descriptor explicitly
        f = File.open('testfile')
        ...
        f.close
      #good - the file descriptor is closed automatically
      File.open('testfile') do |f|
        ...
      end

#COLLECTIONS#

  # prefer %w to literal array syntax
    #bad
      STATES = ['draft', 'open', 'closed']
    #good
      STATES = %w[draft open closed]

  # prefer %i to literal array syntax
    #bad
      STATES = [:draft, :open, :closed]
    #good
      STATES = %i[draft open closed]

  # when accessing first or last element of array prefer first or last to [0] or [-1]

  # Use Set instead of Array when dealing with unique elements

  # prefer symbols instead of strings as hash keys
    #bad
      hash = { 'one' => 1, 'two' => 2, 'three' => 3 }
    #good
      hash = { one: 1, two: 2, three: 3 }

  # avoid the use of mutable objects as hash keys

  # don't mix Ruby 1.9 hash syntax with hash rockets in the same hash literal
    #bad
      { a: 1, 'b' => 2 }
    #goog - if mix of symbols and strings use rockets
      { :a => 1, 'b' => 2 }

  # use hash#key? and hash#value? istead of has_key? and has_value?

  # use Hash#each_key and each_value instead of keys.each and values.each

  # use Hash#fetch when dealing with hash keys that should be present
    heroes = { batman: 'Bruce Wayne', superman: 'Clark Kent' }
      #bad - if we make a mistake we might not spot it right away
    heroes[:batman]
    heroes[:superman]
    #good - fetch raises a KeyError making the problem obvious
    heroes.fetch(:superman)

  # Introduce default values for hash heys via fetch
    batman = { name: 'Bruce Wayne', is_evil: false }
    #bad - if we just use || with falsy value we won't get the expected result
      batman[:is_evil] || true # => true
    #good - fetch works correctly with falsy values
      batman.fetch(:is_evil, true) # => false

  # use Hash#values_at when you need to retrieve several values consecutively from a hash
    #bad
      email = data['email']
      username = data['nickname']
    #good
      email, username = data.values_at('email', 'nickname')

  # When accessing elements of a collection avoid direct access via [n]
    #bad
      Regexp.last_match[1]
    #good
      Regexp.last_match(1)
