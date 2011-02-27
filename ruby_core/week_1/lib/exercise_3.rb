=begin
  * Name: Excerise 3
  * Description: Convert seconds into human readable year format
  * Author: Rahul Trikha
  * Date: 16-01-2011
  * Licensed under the MIT license
=end

# Constants for defining time
DAYS_IN_AN_YEAR = 365
HOURS_IN_A_DAY = 24
MINUTES_IN_AN_HOUR = 60
SECONDS_IN_A_MINUTE = 60

# Method to convert seconds into human readable year format
# e.g 31536000 seconds is 1 year
#
def convert_seconds_to_human_readable_age(seconds=0)
  seconds / (DAYS_IN_AN_YEAR * HOURS_IN_A_DAY * MINUTES_IN_AN_HOUR * SECONDS_IN_A_MINUTE)
end

# Sample usage
converted_age = convert_seconds_to_human_readable_age(979000000)
printf("Age of 979000000 seconds in human readable year format is %.2f years\n", converted_age)

# Ruby 
=begin
doctest: convert_seconds_to_human_readable_age method, given 0 will return 0
>> convert_seconds_to_human_readable_age(0).round(2)
=> 0.00
doctest: convert_seconds_to_human_readable_age method, given 630720000 will return 20.00
>> convert_seconds_to_human_readable_age(630720000).round(2)
=> 20.00
doctest: convert_seconds_to_human_readable_age method, given 979000000 will return 31.00
>> convert_seconds_to_human_readable_age(979000000).round(2)
=> 31.00
=end
