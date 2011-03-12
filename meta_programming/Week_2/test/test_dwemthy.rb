require 'minitest/autorun'
require 'minitest-rg'
require 'ruby-debug'
require 'lib/dwemthy'
require 'lib/creatures'

describe Creature do

  before do
    @rabbit = Rabbit.new
    @dwarven_angel = DwarvenAngel.new
  end

  describe "when rabbit is asked about its life force" do
    it "must show us its life" do
      @rabbit.life.must_equal 20
    end
  end

end
