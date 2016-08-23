def strings
  hw= "Hello, world"
  # replace string
  puts hw
  puts hw.sub("Hello", "Hi")  # replace first
  puts hw.gsub("o", "*")      # replace all
  puts hw.gsub(/[aeo]/, "*")    # replace all vowels

  # index of a substring
  puts hw.index("world")
end

def ranges
  (0..10).each { puts "Maciek"}
  (0..10).each { |idx| puts "Sentence # #{idx}"}
end

def game
  cnt,t,r=0,11,1+rand(10)
  puts "r != t? #{r != t}"
  while t!= r
    puts "Guess? \r"
    t= gets.to_i
    if r< t
      puts "#{t} is too high"
    elsif r > t
      puts "#{t} is too low"
    end
    cnt= cnt+1
  end
  puts "WON in #{cnt} attempt(s). The solution was #{r}"

end
strings
game
# ranges
