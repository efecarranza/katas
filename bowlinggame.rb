class BowlingGame
  def initialize
    @current_roll = 0
    @rolls = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  end

  def roll(pins)
    @rolls[@current_roll] = pins
    @current_roll += 1
  end

  def score
    score = 0
    i = 0
    10.times do
        frame_score = @rolls[i] + @rolls[i + 1]
        if (@rolls[i] == 10)
          score += 10 + @rolls[i + 1] + @rolls[i + 2]
          i += 1
        elsif (frame_score == 10)
          score += (10 + @rolls[i + 2])
          i += 2
        else
          score += @rolls[i] + @rolls[i + 1]
          i += 2
        end
    end
    return score
  end

end

game = BowlingGame.new
12.times do
  game.roll(10)
end
puts 'game score -> ' + game.score().to_s
