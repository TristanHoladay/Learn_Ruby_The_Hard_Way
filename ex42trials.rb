class Person

    def initialize
      ## person has-a name object
      puts "What is this person's name?"
      print '> '
      @persons_name = $stdin.gets.chomp

      @name = @persons_name # had to add @name b/c the attr_reader was picking up the @persons_name that is now an instance of Employee
      if @persons_name.length >= 3                # =~ /(a..z)/ # using .include? sends a no implicit conversion of range to string error
         @persons_name = Employee.new(120000)
         @person_name = employee
      else
        puts "That's not a person!"
        exit(0)
      end
    end
    @pet = nil

    attr_accessor :pet
    attr_reader :name
  def walks
    puts "#{persons_name} likes to walk #{pet} in the mornings."
  end
end

class Employee < Person

  def initialize(salary)
    ## Employee has-a initialize which has-a obj super(name)
    #super(name) # super allows you to use and override or replace the @name from the Person Class
    ## initialize has-a object @salary
    @salary = salary
  end

  attr_accessor :salary, :job, :persons_name # this worked to call on the super(name) which calls on the class Person

  def personal_info
    puts "#{persons_name} works as a #{job} has a salary of #{salary}."
  end
end

chloe = Person.new
chloe.pet = "spot"
chloe.walks
