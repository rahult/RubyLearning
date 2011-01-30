#!/usr/bin/env ruby

=begin
  * Name: Excerise 7
  * Description: Text Analyzer
  * Author: Rahul Trikha
  * Date: 30-01-2011
  * Licensed under the MIT license
=end

class Analyzer

  def initialize(text)
    @text = text
  end

  def character_count(include_spaces=false)
    include_spaces ? @text.size : @text.gsub(/\s/, '').length
  end

  def lines
    @text.lines.count
  end

  def sentences
    @text.split(/\.|\?|!/).length
  end

  def paragraphs
    @text.split(/\n\r/).length
  end

  def words
    @text.split(/\s+/).length
  end

  def word_average_per_sentence
    (words / sentences.to_f).round(2)
  end

  def word_average_per_paragraph
    (words / paragraphs.to_f).round(2)
  end

end

begin
  analysis = Analyzer.new(File.read("text.txt"))
  puts "Character count: #{analysis.character_count(true)}"
  puts "Character count (excluding spaces): #{analysis.character_count}"
  puts "Line count: #{analysis.lines}"
  puts "Word count: #{analysis.words}"
  puts "Sentence count: #{analysis.sentences}"
  puts "Paragraph count: #{analysis.paragraphs}"
  puts "Average number of words per sentence: #{analysis.word_average_per_sentence}"
  puts "Average number of sentences per paragraph: #{analysis.word_average_per_paragraph}"
end if __FILE__ == $0
