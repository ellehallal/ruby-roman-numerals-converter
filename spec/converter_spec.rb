require 'converter'

RSpec.describe RomanNumerals do #testing converter class
  # it 'convert 0 to an empty string' do
  #   roman_numerals = RomanNumerals.new #create new instance of Converter
  #
  #   expect(roman_numerals.convert(0)).to eq('')
  #   #when calling the convert method on
  #   #converter, expecting an empty string returned
  # end

  it 'converts 1 to "I"'do
    roman_numerals = RomanNumerals.new
    expect(roman_numerals.convert(1)).to eq('I')
  end

  it 'converts 2 to "II"' do
    roman_numerals = RomanNumerals.new
    expect(roman_numerals.convert(2)).to eq('II')
  end

  it 'converts 3 to "III"' do
    roman_numerals = RomanNumerals.new
    expect(roman_numerals.convert(3)).to eq('III')
  end

  it 'converts 4 to "IV"' do
    roman_numerals = RomanNumerals.new
    expect(roman_numerals.convert(4)).to eq('IV')
  end

  roman = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    8 => "VIII",
    7 => "VII",
    6 => "VI",
    5 => "V",
    4 => "IV",
    3 => "III",
    2 => "II",
    1 => "I"
  }

  roman.each do |num, symbol|
    it 'converts num to a romal numeral' do
      roman_numerals = RomanNumerals.new
      expect(roman_numerals.convert(num)).to eq(symbol)
    end
  end
end
