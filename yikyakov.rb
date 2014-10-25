require 'marky_markov'                                    # => true
if RUBY_VERSION =~ /2.1.2/ # assuming you're running Ruby ~1.9
  Encoding.default_external = Encoding::UTF_8             # => #<Encoding:UTF-8>
  Encoding.default_internal = Encoding::UTF_8             # => #<Encoding:UTF-8>
end                                                       # => #<Encoding:UTF-8>
markov = MarkyMarkov::TemporaryDictionary.new             # => #<MarkyMarkov::TemporaryDictionary:0x007fdc4103ade8 @dictionary=#<MarkovDictionary:0x007fdc4103adc0 @dictionary={}, @depth=2, @split_words=/(\.\s+)|(\.$)|([?!])|[\s]+/, @split_sentence=/(?<=[.!?])\s+/>, @sentence=#<MarkovSentenceGenerator:0x007fdc4103ad48 @dictionary=#<MarkovDictionary:0x007fdc4103adc0 @dictionary={}, @depth=2, @split_words=/(\.\s+)|(\.$)|([?!])|[\s]+/, @split_sentence=/(?<=[.!?])\s+/>, @depth=2>>
file_pattern = File.expand_path "../yaks.txt" , __FILE__  # => "/Users/dglunz/Documents/yikyakov/yaks.txt"

markov.parse_file file_pattern   # => ["Today, my math TA was waiting for someone to answer his question and after a few moments of silence he said I do math for a living, I can out awkward anyone. Density is the real m/v=p There's a kid in the library using Christmas Lights as an extension cord My gpa is lower than my high score in Tetris.", "But that's ok because a gpa of 3,161,959 is unreasonable *ignores midterms* *ignores bank account* *pretends everything is completely okay* I need to stop skipping legs day.", "But first I need to stop skipping arms, chest, shoulders, back, Calculus 2, and down the hall.", "Can't wait to hear the Kidz Bop version of Anaconda Hey teacher.", "I'm not asking you to spoon feed me but don't give me one chopstick and tell me to eat chili.", "If no one saw me wear it, then it's clean..", "Spooning my boyfriend.", "Out of the container.", "It's ice cream There's a fine line between numerator and denominator I'm already making six figures.", "But only ...
puts markov.generate_n_words 20  # => nil

# >> Schrodinger's iPhone: If you drop your iPhone on the ground face down, the screen though If you call it a
