# 1
# 10.times { |num| puts (" " * num) + "The Flintstones Rock!" }

# 2
# puts "the value of 40 + 2 is #{40 + 2}"
# puts 'the value of 40 + 2 is ' + (40 + 2).to_s

# 3

# Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. How can you make this work without using begin/end/until? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

# def factors(number)
#   divisor = number
#   factors = []
#   while divisor > 0 do
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end
#   factors
# end

# p factors(35)

# 4

# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   puts buffer.object_id
#   buffer << new_element
#   buffer.shift if buffer.size > max_buffer_size
#   buffer.object_id
# end

# p rolling_buffer1([1, 2, 3, 4, 5], 4, 8)
#=> 70274905312080 The value of buffer is changed because object_id stays the same

# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   puts input_array.object_id #=> 70137282136960
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# p rolling_buffer2([1, 2, 3, 4, 5], 4, 8).object_id 
# #=> 70137282136720 
# # input_array value is not changed because it is copied 
# # and passed by reference to a the new address in memory 

# 5

# limit = 15 -> I moved this outer local variable to the inner scope of the fib method

# def fib(first_num, second_num)
#   limit = 15
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1)
# puts "result is #{result}"

# 6

# answer = 42

# def mess_with_it(some_number)
#   some_number += 8
# end

# new_answer = mess_with_it(answer)

# p answer - 8 #=> 34

# 7

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# mess_with_demographics(munsters)

# p munsters
# Nothing will happen to the eye because the output is not explicitly 
# returned from the mess_with_demographics method. But if p munster is invoked
# after the method is called then we can see that he original hash has been mutated.

# 8

# def rps(fist1, fist2)
#   if fist1 == "rock"
#     (fist2 == "paper") ? "paper" : "rock"
#   elsif fist1 == "paper"
#     (fist2 == "scissors") ? "scissors" : "paper"
#   else
#     (fist2 == "rock") ? "rock" : "scissors"
#   end
# end

# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
#=> should return paper

# 9
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo) 
#=> returns "no" because when foo is invoked without an argument passed in, 
#foo's default param is assigned the value of "no"