# Exception Handling is a specific process that deals with errors in a manageable and predictable way.

# Ruby has an Exception class that makes handling these errors much easier. It also has a syntactic structure using the reserved words begin, rescue, and end to signify exception handling. The basic structure looks like this.

begin
  # perform some dangerous operation
rescue
  # do this if operation fails
  # for example, log the error
end

names = ['anne', 'argus', 'anne', nil, 'amanda']

# Iterate through names array with .each method(non-destructive)
names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end

# When the iterator hits the nil value in the names array, it will print out "Something went wrong!" from the rescue block, then continue executing this rest of the program. If the rescue block was not there then the program would stop its execution.


