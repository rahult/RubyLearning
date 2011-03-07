class MyClass
  def initialize
    @a_var = "Hello World"
  end
end

obj = MyClass.new

p obj.instance_eval { @a_var }
p obj.instance_eval "@a_var"
