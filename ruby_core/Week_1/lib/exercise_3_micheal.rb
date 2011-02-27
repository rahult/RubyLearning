#!/usr/bin/env ruby

=begin
  * Name: Excerise 3 Part 2
  * Description: Convert seconds into human readable age format
  * Author: Rahul Trikha
  * Date: 21-01-2011
  * Licensed under the MIT license
=end

def derivative_values(units, property)
  properties = property.map.with_index { |p, i| property[i..-1].inject(:*) }
  units.zip(properties)
end

# Method to convert units in to plural
# e.g (10, "second") is "10 seconds"
#
def plural(quantity, unit)
  "#{quantity} #{unit}#{(quantity == 1) ? "" : "s"}" if quantity > 0
end

# Method to convert seconds into human readable year format
# e.g 31536000 seconds is 1 year
#
def convert_seconds_to_human_readable_age(age_in_seconds=0)

  derivatives = derivative_values([:year, :month, :day, :hour, :minute, :second], 
                                  [ 12, 30.42, 24, 60, 60, 1])

  human_readable_age = []

  derivatives.inject(age_in_seconds) do |age, (time, value)|
    human_readable_age << plural((age/value).round, time.to_s)
    age.remainder(value)
  end

  human_readable_age.compact.join(", ")

end

# Sample Usage
#
begin

  # Given data for test in seconds
  [979000000, 2158493738, 246144023, 1270166272, 1025600095].each do |age|
    puts "#{age} seconds is #{convert_seconds_to_human_readable_age(age)}"
  end

end if __FILE__ == $0

# Ruby
=begin
doctest: convert_seconds_to_human_readable_age method, given 0 will return "0 seconds"
>> convert_seconds_to_human_readable_age(0)
=> ""
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
doctest: convert_seconds_to_human_readable_age method, given 86400 will return "1 day"
>> convert_seconds_to_human_readable_age(86400)
=> "1 day"
doctest: convert_seconds_to_human_readable_age method, given 864000 will return "10 days"
>> convert_seconds_to_human_readable_age(864000)
=> "10 days"
doctest: convert_seconds_to_human_readable_age method, given 86400 will return "1 month"
>> convert_seconds_to_human_readable_age(2628288)
=> "1 month"
doctest: convert_seconds_to_human_readable_age method, given 864000 will return "10 months"
>> convert_seconds_to_human_readable_age(26282880)
=> "10 months"
doctest: convert_seconds_to_human_readable_age method, given 31536000 will return "1 year"
>> convert_seconds_to_human_readable_age(31536000)
=> "1 year"
doctest: convert_seconds_to_human_readable_age method, given 315360000 will return "10 years"
>> convert_seconds_to_human_readable_age(315360000)
=> "10 years"
doctest: convert_seconds_to_human_readable_age method, given 31536001 will return "1 year, 1 second"
>> convert_seconds_to_human_readable_age(31536001)
=> "1 year, 1 second"
doctest: convert_seconds_to_human_readable_age method, given 31536001 will return "1 year, 5 seconds"
>> convert_seconds_to_human_readable_age(31536005)
=> "1 year, 5 seconds"
doctest: convert_seconds_to_human_readable_age method, given 31539600 will return "1 year, 1 hour"
>> convert_seconds_to_human_readable_age(31539600)
=> "1 year, 1 hour"
doctest: convert_seconds_to_human_readable_age method, given 31539600 will return "1 year, 2 months, 6 hours"
>> convert_seconds_to_human_readable_age(36814176)
=> "1 year, 2 months, 6 hours"
doctest: convert_seconds_to_human_readable_age method, given 73628352 will return "2 years, 4 months, 12 hours"
>> convert_seconds_to_human_readable_age(73628352)
=> "2 years, 4 months, 12 hours"
=end
