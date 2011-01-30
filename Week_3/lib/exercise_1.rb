=begin
  * Name: Excerise 1
  * Description: Explain ruby code
  * Author: Rahul Trikha
  * Date: 30-01-2011
  * Licensed under the MIT license
=end

def method
 a = 50
 puts "Object id of method a variable => #{a.object_id}"
 puts "methods local variables #{local_variables}"
 puts a
end

a = 50

puts "Object id of a outside => #{a.object_id}"
method

puts "local variables #{local_variables}"
puts a
