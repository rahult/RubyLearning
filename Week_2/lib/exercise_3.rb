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
  result = ""
  total_line_length = "#{string.lines.count}".length
  string.each_line.with_index do |line, index|
    result << "Line #{(index+1).to_s.rjust(total_line_length, "0")}: #{line.chomp}\n"
  end
  return result
end

# Test string
input_string = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
# Duplicating the test string 7 times to generate 24 lines for testing purpose
7.times { input_string << "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n" }

begin
  puts split_string(input_string)
end if __FILE__ == $0

# Ruby
=begin
doctest: split_string(input_string)
>> split_string(input_string)
=> "Line 01: Welcome to the forum.\n\
    Line 02: Here you can learn Ruby.\n\
    Line 03: Along with other members.\n\
    Line 04: Welcome to the forum.\n\
    Line 05: Here you can learn Ruby.\n\
    Line 06: Along with other members.\n\
    Line 07: Welcome to the forum.\n\
    Line 08: Here you can learn Ruby.\n\
    Line 09: Along with other members.\n\
    Line 10: Welcome to the forum.\n\
    Line 11: Here you can learn Ruby.\n\
    Line 12: Along with other members.\n\
    Line 13: Welcome to the forum.\n\
    Line 14: Here you can learn Ruby.\n\
    Line 15: Along with other members.\n\
    Line 16: Welcome to the forum.\n\
    Line 17: Here you can learn Ruby.\n\
    Line 18: Along with other members.\n\
    Line 19: Welcome to the forum.\n\
    Line 20: Here you can learn Ruby.\n\
    Line 21: Along with other members.\n\
    Line 22: Welcome to the forum.\n\
    Line 23: Here you can learn Ruby.\n\
    Line 24: Along with other members.\n"
=end
