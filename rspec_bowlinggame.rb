require 'rspec'
require './bowlinggame'

describe BowlingGame do

  it 'creates a new instance of bowling game' do
    game = BowlingGame.new
  end

  it 'returns the value of a roll' do
    game = BowlingGame.new
    roll_score = game.roll(1)
    expect(roll_score).to eq(game.score())
  end

  it 'returns a total score of 20 because all 20 rolls are a 1' do
    game = BowlingGame.new
    20.times do
      game.roll(1)
    end
    expect(game.score()).to eq(20)
  end

  it 'should return a score of 16 as i will hit a spare' do
    game = BowlingGame.new
    game.roll(5)
    game.roll(5)
    game.roll(3)
    17.times do
      game.roll(0)
    end
    expect(game.score()).to eq(16)
  end

  it 'should return a score of 24 because you hit a strike, then 3 and 4, then all 0s' do
    game = BowlingGame.new
    game.roll(10)
    game.roll(3)
    game.roll(4)
    16.times do
      game.roll(0)
    end
    expect(game.score()).to eq(24)
  end

  it 'should return a score of 300 if all are strikes' do
    game = BowlingGame.new
    12.times do
      game.roll(10)
    end
    expect(game.score()).to eq(300)
  end

end
