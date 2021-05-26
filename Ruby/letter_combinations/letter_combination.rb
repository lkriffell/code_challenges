def letter_combinations(digits)
  letters = {
      "2": ["a","b","c"],
      "3": ["d","e","f"],
      "4": ["g","h","i"],
      "5": ["j","k","l"],
      "6": ["m","n","o"],
      "7": ["p","q","r", "s"],
      "8": ["t","u","v"],
      "9": ["w","x","y","z"]
  }
  final = []
  if digits
    digits.split('').each do |digit|
      combos = []
      if final == []
        final = letters[digit]
      else
        final.each do |string|
          letters[digit].each do |letter|
            combos << string + letter
          end
        end
        final = combos
      end
    end
  end
  return final
end