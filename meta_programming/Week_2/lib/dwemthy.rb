class Creature
  TRAITS = [:life, :strength]

  def self.method_missing(method_name_sym, *args)
    # Thanks to Samang for giving me the tip to
    # use super in Second Week Assignment 1 Part 2
    return super unless TRAITS.include?(method_name_sym)

    instance_variable_set("@#{method_name_sym}", args.first)
    attr_accessor method_name_sym
  end

  def initialize
    self.class.instance_variables.each do |trait|
      instance_variable_set(trait, self.class.instance_variable_get(trait))
    end

    # Set up an accessor to store life value before fighting value
    self.class.instance_eval do
      attr_accessor :life_before_fighting
      life_before_fighting = 0
    end
  end

  def show_msg(enemy)
    self.life_before_fighting  = life
    enemy.life_before_fighting = enemy.life

    yield(enemy) if block_given?

    calculate_damage enemy

    "[#{self} : #{enemy}]"
  end

  def damage
    life_before_fighting - life
  end

  def calculate_damage(enemy)
    if damage > 0
      puts "You are hit with #{damage} points of damage!"
      puts "Your enemy is hit with #{enemy.damage} points of damage!"
    else
      puts "Healthy lettuce gives you #{damage.abs} life points!!"
    end
  end

  def to_s
    "#{self.class} #{self.life}"
  end
end
