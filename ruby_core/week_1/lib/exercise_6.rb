=begin
  * Name: Excerise 6
  * Description: Convert temperature from Fahrenheit to Celsius
  * Author: Rahul Trikha
  * Date: 16-01-2011
  * Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php
=end

# Method to convert given temperature in Fahrenheit to Celsius
# e.g 32 degrees Fahrenheit is 0.00 degree Celsius
#
def convert_fahrenheit_to_celsius(temperature=0)
  (temperature - 32) * (5.0 / 9)
end

# Sample usage
temperature_in_celsius = convert_fahrenheit_to_celsius(32)
printf("32 degrees Fahrenheit is %.2f degree Celsius\n", temperature_in_celsius)

=begin
doctest: convert_fahrenheit_to_celsius method, given -40 will return -40.00
>> convert_fahrenheit_to_celsius(-40).round(2)
=> -40.00
doctest: convert_fahrenheit_to_celsius method, given 32 will return 0.00
>> convert_fahrenheit_to_celsius(32).round(2)
=> 0.00
doctest: method, given 98.6 will return 37.00
>> convert_fahrenheit_to_celsius(98.6).round(2)
=> 37.00
=end
