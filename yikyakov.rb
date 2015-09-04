require 'marky_markov'

class YikYakov 
  def initialize
    @dict = generate_dictionary
  end

  def generate_post
    puts @dict.generate_n_words 20
  end

  private

  def generate_dictionary
    markov = MarkyMarkov::TemporaryDictionary.new
    markov.parse_file File.expand_path '../yaks.txt', __FILE__
    markov
  end
end
