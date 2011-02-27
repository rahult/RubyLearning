=begin
  * Name: Excerise 2
  * Description: Explain ruby code >> puts "%05d" % 123
  * Author: Rahul Trikha
  * Date: 16-01-2011
  * Licensed under the MIT license
=end

puts "%05d" % 123

# Uses "%05d" as a format specification, and returns the result of applying it to 123
# 'd' in "%05d" is a field type specifying to convert the argument '123' as a decimal number
# '5' in "%05d" is width specifying the minimum number of characters that will be written
# '0' in "%05d" is a modifier specifying to pad with zeros, not spaces
# '%' in "%05d" marks the begining of the format sequence
