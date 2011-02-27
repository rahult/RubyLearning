#!/usr/bin/env ruby

=begin
  * Name: Excerise 10
  * Description: Method to sum all array elements
  * Author: Rahul Trikha
  * Date: 30-01-2011
  * Licensed under the MIT license
=end

# Method to sum array elements
#
def array_sum(array)
  array.inject(:+)
end

begin
  puts array_sum([1, 2, 3, 4, 5])
end if __FILE__ == $0

=begin
doctest: array_sum method, given [1, 2, 3] will return 6
>> array_sum([1, 2, 3])
=> 6
doctest: array_sum method, given [1, 2, 3, 4, 5] will return 15
>> array_sum([1, 2, 3, 4, 5])
=> 15
doctest: array_sum method, given [2, 4, 6, 8] will return 20
>> array_sum([2, 4, 6, 8])
=> 20
=end
