class Food
  def self.one() 1 end

  class << self
    def two() 2 end
  end

  def three() 3 end

  p self.singleton_methods
  p self.class
  p self
end
