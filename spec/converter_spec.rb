require 'converter'

RSpec.describe RomanNumerals do #testing converter class

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

  it 'converts 11 to "XI"' do
    roman_numerals = RomanNumerals.new
    expect(roman_numerals.convert(11)).to eq("XI")
  end

  it 'converts 11 to "XI"' do
    roman_numerals = RomanNumerals.new
    expect(roman_numerals.convert(11)).to eq("XI")
  end

  it 'converts 257 to "CCLVII"' do
    roman_numerals = RomanNumerals.new
    expect(roman_numerals.convert(257)).to eq("CCLVII")
  end

  it 'converts 1986 to "MCMLXXXVI"' do
    roman_numerals = RomanNumerals.new
    expect(roman_numerals.convert(1986)).to eq("MCMLXXXVI")
  end

  it 'converts 68992 to "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMCMXCII"' do
    roman_numerals = RomanNumerals.new
    expect(roman_numerals.convert(68992)).to eq("MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMCMXCII")
  end

end
