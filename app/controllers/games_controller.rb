class GamesController < ApplicationController
  require 'json'
  require 'open-uri'
  def new
    alphabet = ('A'..'Z').to_a
    @letters = []
    10.times do
      @letters << alphabet.sample
    end
    @letters
  end

  def score
  end

#   private

#   def scoring(outcome1, outcome2, length, time)
#   score = 0
#   if outcome1 && outcome2
#     score = length * 10_000 - time * 1_000
#     message = "Well done!"
#   elsif outcome1 && outcome2 == false
#     message = "Word not in the grid"
#   else
#     message = "Not an english word."
#   end
#   return [score, message]
# end

# def checking(word)
#   url = "https://wagon-dictionary.herokuapp.com/#{word}"
#   check = open(url).read
#   check_jsoned = JSON.parse(check)
#   return check_jsoned
# end

# def run_game(attempt, grid, start_time, end_time)
#   # TODO: runs the game and return detailed hash of result (with `:score`, `:message` and `:time` keys)
#   timing = end_time - start_time
#   check_jsoned = checking(attempt)
#   attempt_array = attempt.upcase.split('')
#   score = scoring(check_jsoned["found"], in_the_grid?(attempt_array, grid), check_jsoned["length"], timing)
#   p score[0]
#   result = { score: score[0].to_i, message: score[1], time: timing }
#   return result
# end

# def in_the_grid?(attempt_array, grid)
#   attempt_array.each do |letter|
#     ind = grid.index(letter)
#     if ind
#       grid.delete_at(ind)
#     else
#       return false
#     end
#   end
#   return true
# end
end
