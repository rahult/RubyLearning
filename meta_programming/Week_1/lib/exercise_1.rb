class_value = class A
  def initialize
    @a = 11
    @@a = 22
    a = 33
  end
  @a = 1
  @@a = 2
  a = 3
end

puts "Class A variable @a is #{A.instance_variable_get(:@a)}"
puts "Class A variable @@a is #{A.class_variable_get(:@@a)}"
puts "Class A value is #{class_value}"

obj = A.new
puts "Object of A variable @a is #{obj.instance_variable_get(:@a)}"
puts "Object of A variable @@a is #{obj.class.class_variable_get(:@@a)}"
puts "Object of A initialize method value is #{obj.send(:initialize)}"
