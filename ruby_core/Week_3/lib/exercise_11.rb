#!/usr/bin/env ruby

=begin
  * Name: Excerise 11
  * Description: To print odd or even numbers in a given array
  * Author: Rahul Trikha
  * Date: 30-01-2011
  * Licensed under the MIT license
=end

elements = [12, 23, 456, 123, 4579]

elements.each { |element| puts "#{element} is #{(element % 2 == 0) ? "even" : "odd"}" }
