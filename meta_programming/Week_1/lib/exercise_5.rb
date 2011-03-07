MaskedString = Class.new(String)

MaskedString.instance_eval do 
  define_method :tr_vowel, Proc.new { tr 'aeiou', '*' } 
  singleton_class.send(:define_method, :tr_vowel, Proc.new { |s| s.tr 'aeiou', '*' })
end

p MaskedString.new('The quick brown fox jumps over the lazy dog.').tr_vowel
p MaskedString.tr_vowel('The quick brown fox jumps over the lazy dog.')
