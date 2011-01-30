#!/usr/bin/env ruby

=begin
  * Name: Excerise 8
  * Description: FizzBuzz
  * Author: Rahul Trikha
  * Date: 30-01-2011
  * Licensed under the MIT license
=end

(1..100).each do |element|
  if ((element % 3) == 0) && ((element % 5) == 0)
    puts "FizzBuzz"
  elsif (element % 3) == 0
    puts "Fizz"
  elsif (element % 5) == 0
    puts "Buzz"
  else
    puts element
  end
end
