=begin
  * Name: Excerise 4
  * Description: Convert given number of years into mintues
  * Author: Rahul Trikha
  * Date: 16-01-2011
  * Licensed under the MIT license
=end

# Constants for defining time
DAYS_IN_AN_YEAR = 365
HOURS_IN_A_DAY = 24
MINUTES_IN_AN_HOUR = 60

# Method to convert given number of years into mintues
# e.g 1 year is 525600 is minutes
#
def number_of_minutes_in_given_years(no_of_years=1)
  no_of_years * (DAYS_IN_AN_YEAR * HOURS_IN_A_DAY * MINUTES_IN_AN_HOUR)
end

# Sample usage
no_of_minutes = number_of_minutes_in_given_years(1)
printf("1 year is equal to these many %d minutes\n", no_of_minutes)

=begin
doctest: number_of_minutes_in_given_years method, given 0 will return 0
>> number_of_minutes_in_given_years(0)
=> 0
doctest: number_of_minutes_in_given_years method, given 1 will return 525600
>> number_of_minutes_in_given_years(1)
=> 525600
doctest: number_of_minutes_in_given_years method, given 2 will return 1051200
>> number_of_minutes_in_given_years(2)
=> 1051200
=end
