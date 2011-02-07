#!/usr/bin/env ruby

=begin
  * Name: Excerise 5
  * Description: Inventory
  * Author: Rahul Trikha
  * Date: 07-02-2011
  * Licensed under the MIT license
=end

class Rectangle

  def initialize(x=0, y=0)
    @x, @y = x, y
  end

  def area
    @x * @y
  end

  def perimeter
    2 * (@x + @y)
  end

end

begin
  r = Rectangle.new(23.45, 34.67)
  puts "Area is = #{r.area}"
  puts "Perimeter is = #{r.perimeter}"
end if __FILE__ == $0
