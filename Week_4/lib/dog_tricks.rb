#!/usr/bin/env ruby

=begin
  * Name: Excerise 1a
  * Description: Dog Tricks
  * Author: Rahul Trikha
  * Date: 07-02-2011
  * Licensed under the MIT license
=end

class Dog

  attr_reader :name

  def already_known_tricks
    teach_trick(:bark) { "#{@name} is barking!" }
    teach_trick(:eat) { "#{@name} is eating!" }
    teach_trick(:chase_cat) { "#{@name} is chasing cat!" }
  end

  def initialize(name)
    @name = name
    @tricks = Hash.new("")
    already_known_tricks
  end

  def teach_trick(name, &trick)
    @tricks[name] = (block_given? ? trick : "") if !@tricks.has_key?(name) or !@tricks[name].is_a?(Proc)
  end

  def do_trick(name)
    @tricks[name].is_a?(Proc) ? self.instance_eval(&@tricks[name]) : "#{@name} is still learning this #{name} trick!"
  end

  def method_missing(method_name_sym, *args, &block)
    if @tricks.has_key?(method_name_sym)
      do_trick(method_name_sym)
    else
      "#{@name} doesn't know how to #{method_name_sym}!"
    end
  end

  private :already_known_tricks

end

begin
  d = Dog.new('Lassie')
  d.teach_trick(:dance) { "#{@name} is dancing!" }
  puts d.dance
  d.teach_trick(:poo) { "#{@name} is a smelly doggy!" }
  puts d.poo
  puts

  d2=Dog.new('Fido')
  puts d2.dance
  d2.teach_trick(:laugh) { "#{@name} finds this hilarious!" }
  puts d2.laugh
  puts d.laugh
  puts

  d3=Dog.new('Stimpy')
  puts d3.dance
  puts d3.laugh
  puts
end if __FILE__ == $0
