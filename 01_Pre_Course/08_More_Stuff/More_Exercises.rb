# 1. Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.



def check_seq(arr)
  arr.each do |str|
    if str =~ /lab/i
      puts "#{str}"
    end
  end
end
    
a = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]
check_seq(a)

# Exercise 2
# Nothing.  .call is missing
def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }


# Exercise 3
# Exception Handling is a debugging method that handle any errors thrown within a programs execution


# begin 
  # {intended code to be executed}
# rescue => exception
  # {logs any errors}
# end

# Ex. 4
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Ex. 5
def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
# Missing Ampersand Sign




