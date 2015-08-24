require 'marky_markov'
markov = MarkyMarkov::TemporaryDictionary.new
file_pattern = File.expand_path '../yaks.txt', __FILE__

markov.parse_file file_pattern
puts markov.generate_n_words 20
