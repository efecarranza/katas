class StringCalculator
  def add(string_numbers)
    if string_numbers.start_with?('//')
      delimiter = string_numbers[2]
    else
      delimiter = "\n"
    end
    numbers = edit_delimiter(string_numbers, delimiter)
    numbers = string_numbers.split(',')
    negatives = numbers.any? { |i| i.to_f < 0 }
    if negatives == true
      return "negatives not allowed"
    end
    if numbers.length < 1
      return 0
    elsif numbers.length < 2
      return numbers[0].to_f
    else
      total = 0
      numbers.each do |i|
        total += i.to_f
      end
      return total
    end
  end

  def edit_delimiter(string_numbers, delimiter)
    string_numbers.gsub!(delimiter, ',')
    string_numbers.gsub!("\n", ',')
  end
end
