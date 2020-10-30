# build a class Anagram

# use attr_accessor, create setter/getter for word the class instances are initialized with
# def initialize word instance

# def method called match
# iterate over array of words that are taken in as arg.
# compare each word to match the word that is initialized

# Is it an anagram? Means word contains the same letters
    # .split(" ") words into letters to compare (through class not just an instance)
    # .sort to get elements in order (2 arrays are eq. if they contain the same elements in the same ORDER)
    # compare arrays w/ == (need a new array to contain the sorted array)

    # if the split arg is eq to the split elements shovel into the new array to be returned.

class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

        # check if an anagram
    def match(word) # def method match that takes in word instance
        split_words = self.word.split("").sort # create vari to contain class level word & split, then sort
        anagram_array = []  # new array for our anagrams
        word.each do |letter| # iterate through the elements
            split_element = letter.split("").sort # split the ele & place in a vari
            if split_words == split_element # if the splt arg = the splt elements
                anagram_array << letter # shovel the elements into the new array 
            end # close the if
        end # close the do
        anagram_array # return the new array 
    end # close the method
end # close the class


