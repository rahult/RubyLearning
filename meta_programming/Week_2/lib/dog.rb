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

  MSGS = { :dance => "is dancing",
           :poo   => "is a smelly doggy!",
           :laugh => "finds this hilarious!"
         }

  def initialize(name)
    @name = name
  end

  def can(*tricks, &block)
    tricks.each do |trick|
      block = lambda {"#{name} #{MSGS[trick]}"} unless block_given?
      singleton_class.send(:define_method, trick, &block)
    end
  end

  def method_missing(method_name_sym, *args, &block)
    "#{@name} doesn't understand #{method_name_sym}" if MSGS.key?(method_name_sym)
  end

end
