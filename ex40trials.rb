# Create a class called MyCar.
# When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car.
# Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well.
# Create instance methods that allow the car to speed up, brake, and shut the car off.

class MyCar
  attr_accessor :color

  def initialize
    puts "Input Car Year: "
    @year = $stdin.gets.chomp
    puts "Input Car Model: "
    @model = $stdin.gets.chomp
    @velocity = 0
  end



  def colors
    puts "Input Car Color: "
    self.color = $stdin.gets.chomp
  end


  def speed
    puts "Input Current Speed: "
    velocity = $stdin.gets.chomp
    @velocity = velocity.to_i
  end

  def brake
    slow_down = @velocity - 20; unless @velocity - 20 >= 0; then slow_down = 5; end
    puts "You brake and now your speed is slowing doing. Your speed is now #{slow_down} miles per hour."
  end

  def shut_off
    puts "The car turns off!"
  end

  def info
  puts  "Your car's make is a #{@year}, #{color} #{@model}, and is going #{@velocity} miles per hour."
end                                   # with #{color} if the setter method is def color, then it will call the method again when it tries to run obj.info, so i changed def color to def colors and that fixed it.
end

my_car = MyCar.new
my_car.colors
my_car.speed
puts my_car.info
puts my_car.brake
puts my_car.shut_off
