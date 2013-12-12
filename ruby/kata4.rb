def extract_result(filename, title_index, left_index, right_index)
  result = [0, 100]
  File.open(filename) do |file|
    file.each do |line|
      next if line.to_i === 0 #Skip the line if it doesn't begin with an integer
      line_a = line.strip.split
      temp_diff = line_a[left_index].to_i - line_a[right_index].to_i
      next if temp_diff > result[1] #Is this the smallest level we have seen?
      result = Array.new([line_a[title_index], temp_diff])
    end
    result
  end
end

result = extract_result("weather.dat", 0, 1, 2)
puts "Day = #{result[0]}, Temp diff = #{result[1]}"

result = extract_result("football.dat", 1, 8, 6)
puts "Team = #{result[0]}, Goal diff = #{result[1] * -1}"
