=begin
  * Name: Excerise 3
  * Description: Convert seconds into human readable age format
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
def convert_seconds_to_human_readable_age(age_in_seconds=0)

  age_in_seconds = age_in_seconds.abs

  case age_in_seconds
  when 0...60
    (age_in_seconds == 1) ? "1 second" : "#{age_in_seconds} seconds"
  when 60...3600
    age_in_minutes = age_in_seconds / 60
    (age_in_minutes == 1) ? "1 minute" : "#{age_in_minutes} minutes"
  when 3600...86400
    age_in_hours = age_in_seconds / (60 * 60)
    (age_in_hours == 1) ? "1 hour" : "#{age_in_hours} hours"
  when 86400...31536000
    age_in_months = age_in_seconds / (60 * 60 * 24)
    (age_in_months == 1) ? "1 month" : "#{age_in_months} months"
  else
    age_in_years = age_in_seconds / (60 * 60 * 24 * 365)
    (age_in_years == 1) ? "1 year" : "#{age_in_years} years"
  end

end

# Sample Usage
#
begin

  # Given data for test in seconds
  ages_in_seconds = [979000000, 2158493738, 246144023, 1270166272, 1025600095]

end if __FILE__ == $0

# Ruby
=begin
doctest: convert_seconds_to_human_readable_age method, given 0 will return "0 seconds"
>> convert_seconds_to_human_readable_age(0)
=> "0 seconds"
doctest: convert_seconds_to_human_readable_age method, given 1 will return "1 second"
>> convert_seconds_to_human_readable_age(1)
=> "1 second"
doctest: convert_seconds_to_human_readable_age method, given 10 will return "10 seconds"
>> convert_seconds_to_human_readable_age(10)
=> "10 seconds"
doctest: convert_seconds_to_human_readable_age method, given 60 will return "1 minute"
>> convert_seconds_to_human_readable_age(60)
=> "1 minute"
doctest: convert_seconds_to_human_readable_age method, given 600 will return "10 minutes"
>> convert_seconds_to_human_readable_age(600)
=> "10 minutes"
doctest: convert_seconds_to_human_readable_age method, given 3600 will return "1 hour"
>> convert_seconds_to_human_readable_age(3600)
=> "1 hour"
doctest: convert_seconds_to_human_readable_age method, given 36000 will return "10 hours"
>> convert_seconds_to_human_readable_age(36000)
=> "10 hours"
doctest: convert_seconds_to_human_readable_age method, given 36000 will return "10 hours"
>> convert_seconds_to_human_readable_age(36000)
=> "10 hours"
doctest: convert_seconds_to_human_readable_age method, given 86400 will return "1 day"
>> convert_seconds_to_human_readable_age(86400)
=> "1 month"
doctest: convert_seconds_to_human_readable_age method, given 864000 will return "10 days"
>> convert_seconds_to_human_readable_age(864000)
=> "10 months"
doctest: convert_seconds_to_human_readable_age method, given 31536000 will return "1 year"
>> convert_seconds_to_human_readable_age(31536000)
=> "1 year"
doctest: convert_seconds_to_human_readable_age method, given 315360000 will return "10 years"
>> convert_seconds_to_human_readable_age(315360000)
=> "10 years"
doctest: convert_seconds_to_human_readable_age method, given 31536000 will return "1 years 2 months"
>> convert_seconds_to_human_readable_age(315360000)
=> "10 years"
=end
