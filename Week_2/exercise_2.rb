#!/usr/bin/env ruby

=begin
  * Name: Week 2, Excerise 3
  * Description: Find number of minutes in a given year
  * Author: Rahul Trikha
  * Date: 22-01-2011
  * Licensed under the MIT license
=end

# Constants for defining time
DAYS_IN_AN_YEAR = 365
DAYS_IN_A_LEAP_YEAR = 366
HOURS_IN_A_DAY = 24
MINUTES_IN_AN_HOUR = 60
SECONDS_IN_A_MINUTE = 60

# Method to find whether a given year is leap or not
# e.g 2004 is a leap year, 2003 and 1900 are not leap years
#
def leap_year?(year)
  year.remainder(4) == 0 && year.remainder(100) != 0 || year.remainder(400) == 0
end

# Method to find number of minutes in a given year
# e.g 2004 has 31622400 minutes, 2003 has minutes 31536000
#
def minutes_in_a_year(year)
  (HOURS_IN_A_DAY * MINUTES_IN_AN_HOUR * SECONDS_IN_A_MINUTE) * ((leap_year?(year) ? DAYS_IN_A_LEAP_YEAR : DAYS_IN_AN_YEAR))
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
doctest: minutes_in_a_year method, given 2004 will return 31622400 mintues
>> minutes_in_a_year(2004)
=> 31622400
doctest: minutes_in_a_year method, given 2003 will return 31536000 mintues
>> minutes_in_a_year(2003)
=> 31536000
=end
