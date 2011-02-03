#!/usr/bin/env ruby

=begin
  * Name: Excerise 8
  * Description: FizzBuzz
  * Author: Rahul Trikha
  * Date: 03-02-2011
  * Licensed under the MIT license
=end

def fizbuzz(hash={}, number=0)
  str = hash.map { |key, value| value.to_s if number % key == 0 }.compact.join('')
  str.empty? ? number : str
end


# Fizbuzz normal
(1..100).each { |element| puts fizbuzz({3 => :Fizz, 5 => :Buzz}, element) }

# Fizzbuzz Challenge
(1..100).each do |element| 
  puts fizbuzz({3 => :Fizz, 5 => :Buzz, 7 => :Dazz, 11 => :Kezz}, element) 
end
