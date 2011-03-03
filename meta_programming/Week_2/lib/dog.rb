#!/usr/bin/env ruby

=begin
  * Name: Excerise 1
  * Description: Dog Tricks
  * Author: Rahul Trikha
  * Date: 03-03-2011
  * Licensed under the MIT license
=end

class DogTrickException < Exception; end

class Dog

  attr_reader :name

  MSGS = { :dance => 'is dancing',
           :poo   => 'is a smelly doggy!',
           :laugh => 'finds this hilarious!'
         }


  def initialize(name)
    @name = name
    @tricks = []
  end

  def can(*tricks)
    @tricks = tricks
  end

  def can?(trick)
    @tricks.index(trick) && MSGS.has_key?(trick)
  end

  def do_trick(trick)
    "#{@name} #{MSGS[trick]}"
  end

  def cannot_perform_this_trick(trick)
    "#{@name} doesn't understand #{trick}"
    # raise DogTrickException, "#{@name} doesn't understand #{trick}"
  end

  def respond_to?(method_name_sym, include_private=false)
    can?(method_name_sym) ? true : super
  end

  def method_missing(method_name_sym, *args, &block)
    if can?(method_name_sym) 
      do_trick(method_name_sym)
    else 
      cannot_perform_this_trick(method_name_sym)
    end
  end

end
