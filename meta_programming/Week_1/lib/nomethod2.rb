class NoMethod
  def method_missing(methodname, *args)
    self.class.send(:define_method, methodname, lambda { |*args| puts args.inspect })
    self.send(methodname, *args)
  end
end

obj = NoMethod.new

puts obj.test_me(1, 2, 3)
