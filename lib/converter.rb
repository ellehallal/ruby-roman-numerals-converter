class RomanNumerals
  def convert(number)
  # roman = ["III", "II", "I"]
  # numbers = [3, 2, 1]
    final = []
    roman = {
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
