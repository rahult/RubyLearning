require 'minitest/autorun'
require 'minitest-rg'
require 'lib/dog'

describe Dog do

  before do
    @dog = Dog.new("Snowy")
  end

  describe "when asked about dog's name" do
    it "must respond with dog's name" do
      @dog.name.must_equal "Snowy"
    end

    it "must not respond with another dog's name" do
      @dog.name.wont_equal "Scooby"
    end
  end

  describe "when dog is asked to bark" do
    it "must respond to bark" do
      @dog.must_respond_to :bark
    end

    it "must respond with a bark" do
      @dog.bark.must_equal "Snowy is barking!"
    end
  end

  describe "when dog is asked to eat" do
    it "must respond to eat" do
      @dog.must_respond_to :eat
    end

    it "must respond with a eat" do
      @dog.eat.must_equal "Snowy is eating!"
    end
  end

  describe "when dog is asked to chase cat" do
    it "must respond to chase cat" do
      @dog.must_respond_to :chase_cat

    end
    it "must respond with a chase cat" do
      @dog.chase_cat.must_equal "Snowy is chasing cat!"
    end
  end

end
