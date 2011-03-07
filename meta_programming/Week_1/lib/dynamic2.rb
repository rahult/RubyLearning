class X
  def y
    puts "ymethod"
  end
end

print "Enter a class name: "
cname = gets.chomp
obj = Object.const_get(cname).new
p obj
print "Enter a method to be called: "
mname = gets.chomp
obj.method(mname).call
