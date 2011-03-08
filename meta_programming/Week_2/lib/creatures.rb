# creatures.rb

class IndustrialRaverMonkey < Creature
  life 46
  strength 5
end

class DwarvenAngel < Creature
  life 54
  strength 8
end

class Rabbit < Creature
  life 20
  strength 2

  def ^(enemy)
    show_msg enemy do |e|
      fight e, 5 * [strength, strength/2, 0].sample
    end
  end

  def /(enemy)
    show_msg enemy do |e|
      fight e, 10 * [strength, strength/2, 0].sample
    end
  end

  def %(enemy)
    show_msg enemy do
      self.life += rand(10)
    end
  end

  def fight enemy, damage
    enemy.life -= damage
    self.life -= enemy.strength
  end
end
