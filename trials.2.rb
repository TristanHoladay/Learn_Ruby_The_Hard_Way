@numbers = [1, 2, 3, 4, 5, 6, 7, 8]

@matches = {
            'Man' => 'a',
            'Horse' => 'b',
            'Sun' => 'c',
            'Wheat' => 'd'
           }

@new_hsh = []

@i = 0

while @numbers.size != 0
  value = @numbers.sample(2)
  @numbers.delete_if { |x| value.include?(x) }
  puts "#{value}"
  @new_hsh.push(value)
end

p @new_hsh
@stop = @new_hsh.length - 1

until @i == @stop
  @matches.each do |k, v| { puts @matches[k] = @new_hsh[@i] }

  @i += 1
end
