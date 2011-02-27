#!/usr/bin/env ruby

class Age

  def in_seconds(age_in_seconds=0)
    @seconds  = age_in_seconds.to_i
    @minutes  = @seconds / 60.0
    @hours    = @minutes / 60.0
    @days     = @hours / 24.0
    @months   = @days / 30
    @years    = @months / 12
  end

  def method_missing(method_sym, *args, &block)
    if method_sym.to_s =~ /^to_(.*)$/ && self.instance_variable_defined?("@#{$1}")
      format("%.2f", instance_variable_get("@#{$1}"))
    else
      super
    end
  end

end


age = Age.new
age.in_seconds(979000000)

puts "age in minutes #{age.to_minutes}"
puts "age in hours #{age.to_hours}"
puts "age in days #{age.to_days}"
puts "age in months #{age.to_months}"
puts "age in years #{age.to_years}"
puts "age in years #{age.to_ears}"
