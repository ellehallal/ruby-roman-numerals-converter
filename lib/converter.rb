class RomanNumerals
  def convert(number)
  # roman = ["III", "II", "I"]
  # numbers = [3, 2, 1]
    final = []
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

    roman.each do |key, value|
      # p number
      # p key
      # p value

      while number >= key
         final << value
         number =- key
         p number
      end
    end

    final.join("")
  end

end
