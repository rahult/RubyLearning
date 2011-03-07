class A
  @@a = 1
  @a = 2
  a = 3

  # Write your code here. Use binding method.
  @binding = binding
  self.instance_eval do
    def get_binding
      @binding
    end
  end
end

p eval('[@@a, @a, a]', A.get_binding)   # Replace '*****' to your code
