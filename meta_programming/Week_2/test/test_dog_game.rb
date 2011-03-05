require 'minitest/autorun'
require 'minitest-rg'
require 'lib/dog'

describe Dog do

  before do
    @dog = Dog.new("Snowy")
    @dog.can :dance, :laugh
    @dog.can(:jump) { "#{name} is jumping" }
  end

  describe "when asked about dog's name" do
    it "must respond with dog's name" do
      @dog.name.must_equal "Snowy"
    end

    it "must not respond with another dog's name" do
      @dog.name.wont_equal "Scooby"
    end
  end

  describe "when dog's is asked to perform tricks it has learned" do
    it "must respond with dancing" do
      @dog.dance.must_equal "Snowy is dancing"
    end

    it "must respond with laughing" do
      @dog.laugh.must_equal "Snowy finds this hilarious!"
    end
  end

  describe "when dog's is thought to perform a jumping trick" do
    it "must respond with jumping" do
      @dog.jump.must_equal "Snowy is jumping"
    end
  end

end
