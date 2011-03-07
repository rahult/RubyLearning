class I
  def like arg
    puts "%s %s %s" % [self.class, self.class.instance_methods(false), arg]
  end
end

c, m, arg = 'I like metaprogramming.'.split

# write your code here to display 'I like metaprogramming.'

class << I
  def instance_methods(*args)
    methods = super
    methods.map { |method| method.to_s }.join
  end
end

I.new.like arg
