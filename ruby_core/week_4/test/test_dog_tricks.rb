require 'minitest/autorun'
require 'minitest-rg'
require 'lib/dog_tricks'

describe Dog do

  before do
    @dog = Dog.new("Snowy")
    @dog.teach_trick(:dance) { "#{@name} is dancing!" }
    @dog.teach_trick(:laugh) { "#{@name} finds this hilarious!" }
    @dog.teach_trick(:sit)
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
    it "must respond with a bark" do
      @dog.bark.must_equal "Snowy is barking!"
    end
  end

  describe "when dog is asked to eat" do
    it "must respond with a eat" do
      @dog.eat.must_equal "Snowy is eating!"
    end
  end

  describe "when dog is asked to chase cat" do
    it "must respond with a chase cat" do
      @dog.chase_cat.must_equal "Snowy is chasing cat!"
    end
  end

  describe "when dog is asked to dance a trick it knows" do
    it "must respond with dance" do
      @dog.dance.must_equal "Snowy is dancing!"
    end
  end

  describe "when dog is asked to laugh a trick it knows" do
    it "must respond with laugh" do
      @dog.laugh.must_equal "Snowy finds this hilarious!"
    end
  end

  describe "when dog is taught an incomplete trick to sit" do
    it "must respond with still learning to sit" do
      @dog.sit.must_equal "Snowy is still learning this sit trick!"
    end
  end

  describe "when dog is taught a complete version of an incomplete sitting trick" do
    before do
      @dog.teach_trick(:sit) { "#{@name} is sitting down!" }
    end

    it "must respond with sitting down" do
      @dog.sit.must_equal "Snowy is sitting down!"
    end
  end

 describe "when dog is asked to perform a trick it does not konws" do
    it "must respond with that it does not know how to cry!" do
      @dog.cry.must_equal "Snowy doesn't know how to cry!"
    end

    it "must respond with that it does not know how to cry!" do
      @dog.bite.must_equal "Snowy doesn't know how to bite!"
    end
  end

end
