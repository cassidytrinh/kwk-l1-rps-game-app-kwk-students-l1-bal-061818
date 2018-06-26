class RPSGame
  attr_accessor :play

  def initialize(play)
    @play = play
  end

  def valid_play?(play)
    if play == "rock" || play == "paper" || play == "scissors"
      return true
    else
      raise PlayTypeError
      return false
    end
  end

  class PlayTypeError < StandardError
    # Don't be alarmed! This is a class set inside a class, but works just fine in Ruby
    # In this case, we're creating a custom error that should be raised if RPSGame.new receives an invalid move as an argument
  end

end
