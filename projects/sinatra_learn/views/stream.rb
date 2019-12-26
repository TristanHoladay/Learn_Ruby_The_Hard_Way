class Stream
  def parts
    100.times { |i| yield "#{i}\n"}
  end
end 
