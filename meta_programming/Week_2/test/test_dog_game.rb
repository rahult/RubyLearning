require 'minitest/autorun'
require 'minitest-rg'
require 'lib/dog'

describe Dog do

  before do
    @dog = Dog.new("Snowy")
    @dog.can :dance, :laugh
  end

  describe "when asked about dog's name" do
    it "must respond with dog's name" do
      @dog.name.must_equal "Snowy"
    end

    it "must not respond with another dog's name" do
      @dog.name.wont_equal "Scooby"
    end
  end

  describe "when dog's is taught a new trick" do
    it "must learn the new trick if it is capable of learning" do
      skip
    end

    it "must respond with" do
      skip
    end
  end

end
