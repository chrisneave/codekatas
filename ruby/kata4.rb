File.open("weather.dat") do |file|
  result = [0,100]
  file.each do |line|
    next if line.to_i === 0 #Skip the line if it doesn't begin with an integer
    line_a = line.strip.split
    temp_diff = line_a[1].to_i - line_a[2].to_i
    next if temp_diff > result[1] #Is this the smallest level we have seen?
    result = Array.new([line_a[0], temp_diff])
  end
  puts "Day = #{result[0]}, Temp diff = #{result[1]}"
end