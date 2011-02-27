=begin
  * Name: Excerise 5
  * Description: Find the reason why local variable with same name as a method gets precedence
  * Author: Rahul Trikha
  * Date: 16-01-2011
  * Licensed under the MIT license
=end

my_string = 'Hello Ruby World'

def my_string
  'Hello World'
end

# Calls local variable
puts my_string

# This is because of an ambiguity between local variables and methods
# It only happens for receiverless message sends with no argument list
# As Ruby does not know whether to call a local variable or method

# Calls local method
puts my_string()
