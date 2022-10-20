# Your code goes here!
class Anagram

    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array)
        matches = []
        word_letters = self.word.chars
        sorted_word = word_letters.sort
        #map over the array
        array.map do |w|
            #split each word into characters
            letters_array = w.chars
            #sort characters alphabetically
            sorted = letters_array.sort
            #see if there is a match
            if sorted == sorted_word
                matches << w
            end
        end
        matches
    end
end