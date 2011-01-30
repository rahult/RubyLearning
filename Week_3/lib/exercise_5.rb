#!/usr/bin/env ruby

=begin
  * Name: Excerise 5
  * Description: Parse a string "a=b" into two string "a" and "b"
  * Author: Rahul Trikha
  * Date: 30-01-2011
  * Licensed under the MIT license
=end

# Method to split string a given string from "a=b" to ["a", "b"]
#
def split_string(string)
  string.split("=")
end

begin
  split = split_string("key=value")
  puts "Key #{split[0]} and Value #{split[1]}"
end if __FILE__ == $0

=begin
doctest: split_string method, given "key=value" will return ["key", "value"]
>> split_string("key=value")
=> ["key", "value"]
doctest: split_string method, given "day=monday" will return ["day", "monday"]
>> split_string("day=monday")
=> ["day", "monday"]
=end
