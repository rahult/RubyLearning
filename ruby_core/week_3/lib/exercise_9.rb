#!/usr/bin/env ruby

=begin
  * Name: Excerise 9
  * Description: Given a string, write a program to reverse the word order
  * Author: Rahul Trikha
  * Date: 30-01-2011
  * Licensed under the MIT license
=end

# Method to reverse word order of a given string
#
def reverse_string(string)
  string.split(/ /).reverse.join(" ")
end

begin
  puts reverse_string("Hello World")
end if __FILE__ == $0

=begin
doctest: reverse_string method, given "Hello World" will return "World Hello"
>> reverse_string("Hello World")
=> "World Hello"
doctest: reverse_string method, given "this is a test string" will return "string test a is this"
>> reverse_string("this is a test string")
=> "string test a is this"
doctest: reverse_string method, given "work it see to test; another" will return "another test; to see it work"
>> reverse_string("work it see to test; another")
=> "another test; to see it work"
=end
