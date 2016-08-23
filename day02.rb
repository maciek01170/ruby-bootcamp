def files
  # use file with code block:
  File.open("data/file_001.txt", 'w') {
    |f| f.write("Ala ma kota\n")
  }
  # use file without code bloc

  f=   File.new("data/file_001.txt", 'a+')
  f.write("Toto va au ZOO\n")
  f.close()
end

# cf http://stackoverflow.com/questions/39567/what-is-the-best-way-to-convert-an-array-to-a-hash-in-ruby
def hashes
  a1 = ['apple', 1, 'banana', 2]
  h1 = Hash[*a1.flatten(1)]
  puts "h1: #{h1.inspect}"

  a2 = [['apple', 1], ['banana', 2]]
  h2 = Hash[*a2.flatten(1)]
  puts "h2: #{h2.inspect}"

  h3= a2.to_h
  puts "h3: #{h3.inspect}"

  puts "h3.to_a: #{h3.to_a.inspect}"
  puts "h3.to_a: #{h3.to_a.flatten(1).inspect}"

  puts " *** Iterate ***"
  print "Array> "
  a1.each { |i| print "#{i},"}
  puts ""

  print "Hash > "
  h3.each {|k,v| print "[#{k} => #{v}], "}
  puts ""
end

def lists
  a=[1,2,3,4,5]
  puts "Stack ..."
  a.push(6)
  a.pop

  puts "Queue"
  a.unshift(6)
  a.pop
end


def lists_exercice
  a = []
  (1..16).each { |i| a << i}
  puts " *** 1 ***"
  (0..3).each {|i| (0..3).each {|j| printf("%4d", a[4*i+j]) }; puts "" }
  puts " *** 2 ***"
  a.each_slice(4) { |a| p a }
end

#hashes
#files
lists_exercice