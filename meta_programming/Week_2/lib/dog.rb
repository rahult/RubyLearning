#!/usr/bin/env ruby

=begin
  * Name: Excerise 1
  * Description: Dog Tricks
  * Author: Rahul Trikha
  * Date: 03-03-2011
  * Licensed under the MIT license
=end

class Dog

  attr_reader :name

  MSGS = { :dance => 'is dancing',
           :poo   => 'is a smelly doggy!',
           :laugh => 'finds this hilarious!'
         }

  def initialize(name)
    @name = name
  end

  def can(*tricks)
    tricks.each do |trick|
      (class << self; self; end).class_eval do
        define_method(trick) { "#{name} #{MSGS[trick]}" }
      end
    end
  end

  def method_missing(method_name_sym, *args, &block)
    "#{@name} doesn't understand #{method_name_sym}"
  end

end
