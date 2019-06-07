# Iterators are methods that naturally loop over a given set of data and allow you to operate on each element in the collection.

# names = ['Amanda', 'Gilda', 'Maya', 'Anne', 'Ann', 'Argus']

# names.each { |name| puts name }

# Using an iterator with a block - do/end

names = ['Amanda', 'Gilda', 'Maya', 'Anne', 'Ann', 'Argus']
x = 1

names.each do |name| 
  puts "#{x}. #{name}" # uses string interpolation to print a numberd list of each name in the array
  x += 1
end 

# Recursion

def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

p doubler(2)