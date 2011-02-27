#!/usr/bin/env ruby

=begin
  * Name: Week 1 Challenge
  * Description: Generate formatted table for a given integer
  * Author: Rahul Trikha
  * Date: 23-01-2011
  * Licensed under the MIT license
=end

class TableGenerator

  def initialize(min=1, decorator="=")
    @min = min
    @decorator = decorator
  end

  def multiplication_table(integer, heading='', decorate=false)
    @max = integer
    clear_table
    draw_table
    draw_decoration if decorate
    draw_header(heading) unless heading.empty?
    @table
  end

  private

    def clear_table
      @table = ""
    end

    def max_number_length
      (@max*@min < 1) ? "#{@min*@max}".length : "#{@max*@max}".length
    end

    def pad(string, character="")
      "#{string}".rjust(max_number_length, character) + character
    end

    def draw_header(string)
      @table = "#{string}\n" + @table
    end

    def draw_decoration
      decoration = ""
      (@min..@max).each do |x|
        decoration << pad(@decorator, @decorator)
      end
      decoration << "\n"
      @table = decoration + @table + decoration
    end

    def draw_table
      (@min..@max).each do |x|
        (@min..@max).each do |y|
          @table << pad(x*y, " ")
        end
        @table << "\n"
      end
    end
end

begin
  @table = TableGenerator.new
  puts @table.multiplication_table(5, "Times Table 5", true)
  puts @table.multiplication_table(9, "Times Table 9", true)
  @table = TableGenerator.new(2)
  puts @table.multiplication_table(20)
end if __FILE__ == $0
