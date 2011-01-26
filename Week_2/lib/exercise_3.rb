#!/usr/bin/env ruby
=begin
  * Name: Week 2, Week 2 challenge
  * Description: Split and print each line from a given string
  * Author: Rahul Trikha
  * Date: 26-01-2011
  * Licensed under the MIT license
=end


# Method to split a given string at end of line
#
def split_string(string)
  total_line_length = "#{string.lines.count}".length
  string.each_line.with_index do |line, index|
    puts "Line #{(index+1).to_s.rjust(total_line_length, "0")}: #{line.chomp}"
  end
end

input_string = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
7.times { input_string << "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n" }

begin
  split_string(input_string)
end if __FILE__ == $0

# Ruby
=begin
doctest: split_string(input_string)
>> split_string(input_string)
=> Line 01: Welcome to the forum.
=> Line 02: Here you can learn Ruby.
=> Line 03: Along with other members.
=> Line 04: Welcome to the forum.
=> Line 05: Here you can learn Ruby.
=> Line 06: Along with other members.
=> Line 07: Welcome to the forum.
=> Line 08: Here you can learn Ruby.
=> Line 09: Along with other members.
=> Line 10: Along with other members.
=> Line 11: Welcome to the forum.
=> Line 12: Here you can learn Ruby.
=> Line 13: Along with other members.
=> Line 14: Welcome to the forum.
=> Line 15: Here you can learn Ruby.
=> Line 16: Along with other members.
=> Line 17: Welcome to the forum.
=> Line 18: Here you can learn Ruby.
=> Line 19: Along with other members.
=> Line 20: Along with other members.
=> Line 21: Welcome to the forum.
=> Line 22: Here you can learn Ruby.
=> Line 23: Along with other members.
=> Line 24: Welcome to the forum.
=end
