require 'minitest/autorun'
require 'minitest-rg'
require 'lib/analyzer'

describe Analyzer do
  before do
    @text = Analyzer.new("Hello World!\nThis is my first MiniTest.\n\rI hope I\n\rwill keep using it.")
  end

  describe "when asked about character count" do
    it "must respond with number of characters including spaces" do
      @text.character_count(true).must_equal 70
    end
  end

  describe "when asked about character count without spaces" do
    it "must respond with number of characters without counting spaces" do
      @text.character_count(false).must_equal 55
    end
  end

  describe "when asked about line count" do
    it "must respond with number of lines" do
      @text.lines.must_equal 4
    end
  end

  describe "when asked about paragraph count" do
    it "must respond with number of paragraphs" do
      @text.paragraphs.must_equal 3
    end
  end

  describe "when asked about sentence count" do
    it "must respond with number of sentences" do
      @text.sentences.must_equal 3
    end
  end

  describe "when asked about word count" do
    it "must respond with number of words" do
      @text.words.must_equal 14
    end
  end

  describe "when asked about words per sentence" do
    it "must respond with number of words per sentence" do
      @text.word_average_per_sentence.must_equal 4.67
    end
  end

  describe "when asked about words per paragraph" do
    it "must respond with number of words per paragraph" do
      @text.word_average_per_paragraph.must_equal 4.67
    end
  end
end
