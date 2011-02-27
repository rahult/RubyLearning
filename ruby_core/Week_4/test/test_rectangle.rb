require 'minitest/autorun'
require 'minitest-rg'
require 'lib/rectangle'

describe Rectangle do

  describe "when asked for area and perimeter of rectangle 23.45 x 34.67" do
    before do
      @rectangle = Rectangle.new(23.45, 34.67)
    end

    it "must respond with its area" do
      @rectangle.area.round(2).must_equal 813.01
    end

    it "must respond with its perimeter" do
      @rectangle.perimeter.round(2).must_equal 116.24
    end
  end

  describe "when asked for area and perimeter of rectangle 0 x 0" do
    before do
      @rectangle = Rectangle.new(0, 0)
    end

    it "must respond with its area" do
      @rectangle.area.round(2).must_equal 0.00
    end

    it "must respond with its perimeter" do
      @rectangle.perimeter.round(2).must_equal 0
    end
  end

  describe "when asked for area and perimeter of rectangle 10 x 10" do
    before do
      @rectangle = Rectangle.new(10, 10)
    end

    it "must respond with its area" do
      @rectangle.area.round(2).must_equal 100.00
    end

    it "must respond with its perimeter" do
      @rectangle.perimeter.round(2).must_equal 40
    end
  end

end
