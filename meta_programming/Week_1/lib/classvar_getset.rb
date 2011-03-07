class X
  def self.addvar(symbol, value)
    class_variable_set(symbol, value)
  end

  def self.getvar(symbol)
    class_variable_get(symbol)
  end
end

X.addvar(:@@newvar, 2000)
puts X.getvar(:@@newvar)
p X.class_variables

obj = X.new
obj.instance_variable_set(:@name, "Rahul")
p obj.instance_variables
p obj.instance_variable_get(:@name)
