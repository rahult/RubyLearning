class Creatures
  singleton_class.instance_eval do
    def traits(*accessors)
      accessors.each do |m|
        define_method(m) do
          instance_variable_get("@#{m}")
        end

        define_method("#{m}=") do |val|
          instance_variable_set("@#{m}", val)
        end
      end
    end
  end
end

p Creatures.methods.sort

# class Dragon < Creatures
#   traits :life, :power
# end

# d = Dragon.new

# p d
