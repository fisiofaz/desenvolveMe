def roman_to_int(s)
  roman_numerals = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  total = 0
  prev_value = 0

  s.reverse.each_char do |char|
    value = roman_numerals[char]
    if value < prev_value
      total -= value
    else
      total += value
    end
    prev_value = value
  end

  total
end
