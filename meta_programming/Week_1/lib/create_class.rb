class_name = "Test"
Object.const_set(class_name, Class.new)
class_name = Object.const_get(class_name)
class_name::class_eval do
  self.class.send(:define_method, :myname, Proc.new { puts "The name of my class is '#{self}'" })
end
x = class_name.new
class_name.myname
