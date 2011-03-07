module X
end

class Y
  @@x = 10
  include X
end

X.module_eval { define_method(:xyz) { puts "Hello" } }
Y.class_eval { define_method(:abc) { puts "Hello, hello" } }

ob = Y.new

ob.xyz
ob.abc

String.class_eval { define_method(:bye) { puts "Goodbye" } }
"Hello".bye
