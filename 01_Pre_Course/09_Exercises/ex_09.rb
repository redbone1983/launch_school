# Exercise 9.
# Suppose you have a hash h = {a:1, b:2, c:3, d:4}

h1 = {a:1, b:2, c:3, d:4}

# 1. Get the value of key `:b`.
p h1.fetch(:b)
#=> 2

# 2. Add to this hash the key: value pair `{e:5}`
h2 = {e:5}
h1.merge!(h2)
p h1
# 3. Remove all key:value pairs whose value is less than 3.5
h1.delete_if { |k, v| v < 3.5 }
p h1
#=> {:d=>4, :e=>5}