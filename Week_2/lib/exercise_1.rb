#!/usr/bin/env ruby
=begin
  * Name: Week 2, Excerise 1
  * Description: Split and print each line from a given string
  * Author: Rahul Trikha
  * Date: 22-01-2011
  * Licensed under the MIT license
=end


# Method to split a given string at end of line
#
def split_string(string)
  string.each_line.with_index do |line, index|
    puts "Line #{index+1}: #{line.chomp}"
  end
end

input_string = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

split_string(input_string)

# Ruby
=begin
doctest: split_string(input_string)
>> split_string(input_string)
=> Line 1: Welcome to the forum.
=> Line 2: Here you can learn Ruby.
=> Line 3: Along with other members.
=end
