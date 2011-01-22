#!/usr/bin/env ruby

=begin
  * Name: Week 2, Excerise 3
  * Description: Find number of minutes in a given year
  * Author: Rahul Trikha
  * Date: 22-01-2011
  * Licensed under the MIT license
=end

# Constants for defining time
HOURS_IN_A_DAY = 24
MINUTES_IN_AN_HOUR = 60

# Method to find whether a given year is leap or not
# e.g 2004 is a leap year, 2003 and 1900 are not leap years
#
def leap_year?(year)
  year.remainder(4) == 0 && year.remainder(100) != 0 || year.remainder(400) == 0
end

# Method to find number of minutes in a given year
# e.g 2004 has 527040 minutes, 2003 has minutes 525600
#
def minutes_in_a_year(year)
  HOURS_IN_A_DAY * MINUTES_IN_AN_HOUR * days_in_a_year(year)
end

# Method to find number of days in a given year
# e.g 2004 has 366 days, 2003 has 365 days
#
def days_in_a_year(year)
  leap_year?(year) ? 366 : 365
end

begin
  # Sample Usage
  [2000, 2004, 1900, 2005].each do |year|
    puts "Year #{year} has #{minutes_in_a_year(year)} minutes"
  end
end if __FILE__ == $0

# Ruby
=begin
doctest: leap_year? method, given 2004 will return true
>> leap_year?(2004)
=> true
doctest: leap_year? method, given 1900 will return true
>> leap_year?(1900)
=> false
doctest: leap_year? method, given 2003 will return false
>> leap_year?(2003)
=> false
doctest: minutes_in_a_year method, given 2004 will return 527040 mintues
>> minutes_in_a_year(2004)
=> 527040
doctest: minutes_in_a_year method, given 2003 will return 525600 mintues
>> minutes_in_a_year(2003)
=> 525600
=end
