#!/usr/bin/env ruby

=begin
  * Name: Excerise 6 (Part 2)
  * Description: Convert temperature between these units (celsius, fahrenheit, kelvin, rankine)
  * Author: Rahul Trikha
  * Date: 19-01-2011
  * Licensed under the MIT license
=end

# Method to convert given temperature from a given unit to celsius
# e.g 32 degree Fahrenheit in 0.00 degree Celsius
# convert_to_celsius(32, "fahrenheit")
#
def convert_to_celsius(temperature=0, from="fahrenheit")
  case from
  when "fahrenheit"
    (temperature - 32) * (5.0 / 9)
  when "kelvin"
    temperature - 273.15
  when "rankine"
    (temperature - 491.67) * (5.0 / 9)
  when "celsius"
    temperature
  else
    return false
  end
end

# Method to convert given temperature from celsius to a given unit
# e.g 0 degrees Celsius is 32.00 degree Fahrenheit
# convert_from_celsius(0, "fahrenheit")
#
def convert_from_celsius(temperature, to)
  case to
  when "fahrenheit"
    temperature * (9.0 / 5) + 32
  when "kelvin"
    temperature + 273.15
  when "rankine"
    (temperature + 491.67) * (9.0 / 5)
  when "celsius"
    temperature
  else
    return false
  end
end

# Method to convert given temperature from one given unit into another
# e.g 0 degrees Celsius is 32.00 degree Fahrenheit
# convert_temperature(0, "celsius", "fahrenheit")
#
def convert_temperature(temperature, from, to)
  convert_from_celsius(convert_to_celsius(temperature, from), to)
end

# Method to process user input into consumable information
# e.g "0 celsius to fahrenheit" becomes {:temperature => 0.00, :from => "celsius", :to => "fahrenheit"}
# parse_user_input("0 celsius to fahrenheit")
#
def parse_user_input(input)
  processed_input = {}
  input = input.scan(/[\w.]*/)
  processed_input[:temperature] = input[0].to_f
  processed_input[:from] = input[2]
  processed_input[:to] = input[6]
  processed_input
end

begin
  puts "Convert temperature (e.g 0 celsius to fahrenheit) or type <exit> to quit:"
  until (user_input = gets.chomp).eql?("exit")
    user_input = parse_user_input(user_input)
    converted_temperature = convert_temperature(user_input[:temperature], user_input[:from], user_input[:to])
    if converted_temperature
      puts "#{user_input[:temperature].round(2)} #{user_input[:from]} is #{converted_temperature.round(2)} #{user_input[:to]}"
    else
      puts "Sorry I was unable to process your conversion request, please try using these units (celsius, fahrenheit, kelvin, rankine)"
    end
    puts "\nConvert temperature (e.g 0 celsius to fahrenheit) or type <exit> to quit:"
  end
end if __FILE__ == $0

# Ruby Doctests
=begin
doctest: temperature_convert method, given 0 degree celsius should return 32 fahrenheit
>> convert_temperature(0, "celsius", "fahrenheit").round(2)
=> 32.00
doctest: temperature_convert method, given 0 degree fahrenheit should return -17.78 celsius
>> convert_temperature(0, "fahrenheit", "celsius").round(2)
=> -17.78
doctest: temperature_convert method, given 0 degree kelvin should return -273.15 celsius
>> convert_temperature(0, "kelvin", "celsius").round(2)
=> -273.15
doctest: temperature_convert method, given 184 degree kelvin should return -128.47 fahrenheit
>> convert_temperature(184, "kelvin", "fahrenheit").round(2)
=> -128.47
doctest: temperature_convert method, given 0 degree rankine should return -273.15 celsius
>> convert_temperature(0, "rankine", "celsius").round(2)
=> -273.15
doctest: temperature_convert method, given 0 degree rankine should return 0 kelvin
>> convert_temperature(0, "rankine", "kelvin").round(2)
=> 0.00
=end
