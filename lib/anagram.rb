require 'pry'

class Anagram
    def initialize(word)
        @word = word
    end

    def match(arr)
        puts "I am the word #{@word.upcase}"
        puts "the arr to check is #{arr}"
        puts "#{@word.chars.sort}"
        arr.select {|possible_anagram| possible_anagram.chars.sort == @word.chars.sort}
    end
end

listen = Anagram.new("listen")
listen.match(%w[enlists google inlets netsil banana])
