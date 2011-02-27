#!/usr/bin/env ruby

=begin
  * Name: Excerise 1
  * Description: Dog
  * Author: Rahul Trikha
  * Date: 07-02-2011
  * Licensed under the MIT license
=end

class Dog
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def bark
    "#{@name} is barking!"
  end

  def eat
    "#{@name} is eating!"
  end

  def chase_cat
    "#{@name} is chasing cat!"
  end

end

begin
  dog = Dog.new("Snowy")
  puts dog.bark
  puts dog.eat
  puts dog.chase_cat
end if __FILE__ == $0
