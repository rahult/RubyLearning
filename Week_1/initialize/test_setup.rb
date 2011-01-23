require 'rubygems'
require 'minitest/autorun'
require 'minitest-rg'

class String
  # Removes beginning-whitespace from each line of a string.
  # But only as many whitespace as the first line has.
  #
  # Ment to be used with heredoc strings like so:
  #
  # text = <<-EOS.unindent
  #   This line has no indentation
  #     This line has 2 spaces of indentation
  #   This line is also not indented
  # EOS
  #
  def unindent
    lines = []
    each_line {|ln| lines << ln }

    first_line_ws = lines[0].match(/^\s+/)[0]
    re = Regexp.new('^\s{0,' + first_line_ws.length.to_s + '}')

    lines.collect {|line| line.sub(re, "") }.join
  end
end
