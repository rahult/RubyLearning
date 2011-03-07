animal = 'dog'

# def animal.speak
def animal.speak
  puts 'Dog says Woof! (def animal.speak)'
end

animal.speak  #=> 'Dog says Woof!'
p animal.singleton_methods
animal.singleton_class.send(:remove_method, :speak)


# singleton class
class << animal
  def speak
    puts 'Dog says Woof! (class << animal)'
  end
end

animal.speak  #=> 'Dog says Woof!'
p animal.singleton_methods
animal.singleton_class.send(:remove_method, :speak)


# define_method & lambda combined
animal.singleton_class.send(:define_method, :speak, Proc.new { puts 'Dog says Woof! (define_method)' })

animal.speak  #=> 'Dog says Woof!'
p animal.singleton_methods
animal.singleton_class.send(:remove_method, :speak)


# instance_eval
animal.instance_eval <<EOT
  def speak
    puts 'Dog says Woof! (instance_eval)'
  end
EOT

animal.speak  #=> 'Dog says Woof!'
p animal.singleton_methods
animal.singleton_class.send(:remove_method, :speak)


# Defining Module
module Woof
  def speak
    puts 'Dog says Woof! (module, extend)'
  end
end

# module, extend
animal.extend(Woof)

animal.speak  #=> 'Dog says Woof!'
p animal.singleton_methods


# Re-Defining Module
module Woof
  def speak
    puts 'Dog says Woof! (module, include)'
  end
end

# module, include
animal.singleton_class.send(:include, Woof)

animal.speak  #=> 'Dog says Woof!'
p animal.singleton_methods
animal.singleton_class.send(:undef_method, :speak)


# send, lambda
# see define_method

# animal.speak  #=> 'Dog says Woof!'
# animal.singleton_class.send(:remove_method, :speak)
