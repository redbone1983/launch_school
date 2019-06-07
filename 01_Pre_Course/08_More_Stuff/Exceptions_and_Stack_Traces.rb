# Exceptions and Stack Traces

=begin

For the purposes of this section an exception can be viewed as synonymous with an error. During the course of program execution, many things can go wrong for a variety of reasons, and when something does go wrong, usually we say "an exception is raised". This is a common technical phrase that just means your code encountered some sort of error condition. When an exception is raised, it is usually accompanied by a large output of text of what looks like gibberish. It's in this gibberish that you'll find the clues to the source of the problem, and it's important to start developing an eye for scanning and parsing this gibberish output. This skill will end up being one of the most important things to develop over time, because if you're like most programmers, your code will generate a lot of exceptions.

=end

# Common Built-In Error Types that include a a message

=begin

StandardError
TypeError
ArgumentError
NoMethodError
RuntimeError
SystemCallError
ZeroDivisionError
RegexpError
IOError
EOFError
ThreadError
ScriptError
SyntaxError
LoadError
NotImplementedError
SecurityError

=end

