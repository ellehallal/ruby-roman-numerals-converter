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
end
