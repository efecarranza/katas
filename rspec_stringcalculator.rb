require './stringcalculator'
require 'rspec'

describe StringCalculator do

  it 'returns an empty string because nothing passed' do
    c = StringCalculator.new
    result = c.add("")
    expect(result).to eq(0)
  end

  it 'returns the first argument passed as a string as a number' do
    c = StringCalculator.new
    result = c.add("1")
    expect(result).to eq(1)
  end

  it 'returns first and second arguments added together as a number' do
    c = StringCalculator.new
    result = c.add("1,2")
    expect(result).to eq(3)
  end

  it 'returns sum of all arguments passed as strings, in number format' do
    c = StringCalculator.new
    result = c.add("1,2,3,4")
    expect(result).to eq(10)
  end

  it 'returns sum of all arguments even if separated by \n character' do
    c = StringCalculator.new
    result = c.add("1\n2,3,4")
    expect(result).to eq(10)
  end

  it 'returns sum of all arguments even with different delimiters' do
    c = StringCalculator.new
    result = c.add("//;\n1;2\n3,4")
    expect(result).to eq(10)
  end

  it 'should return negatives not allowed and such values for all negatives passed to add' do
    c = StringCalculator.new
    result = c.add("//;\n1;2\n3,-4")
    expect(result).to eq("negatives not allowed")
  end

end
