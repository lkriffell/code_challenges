def letter_combinations(digits)
  letters = {
      "2" => ["a","b","c"],
      "3" => ["d","e","f"],
      "4" => ["g","h","i"],
      "5" => ["j","k","l"],
      "6" => ["m","n","o"],
      "7" => ["p","q","r", "s"],
      "8" => ["t","u","v"],
      "9" => ["w","x","y","z"]
  }
  all_combos = []
  if digits
    digits.split('').each do |digit|
      combos = []
      if all_combos == []
        all_combos = letters[digit]
      else
        all_combos.each do |string|
          letters[digit].each do |letter|
            combos << string + letter
          end
        end
      all_combos = combos
      end
    end
  end
  return all_combos
end

letter_combos = letter_combinations("23")
if letter_combos == ["ad","ae","af","bd","be","bf","cd","ce","cf"]
  p "1. Pass"
else
  p "1. Fail: #{letter_combos}"
end

letter_combos = letter_combinations("")
if letter_combos == []
  p "2. Pass"
else
  p "2. Fail: #{letter_combos}"
end

letter_combos = letter_combinations("5532")
if letter_combos == ["jjda","jjdb","jjdc","jjea","jjeb","jjec","jjfa","jjfb","jjfc","jkda","jkdb","jkdc","jkea","jkeb","jkec","jkfa","jkfb","jkfc","jlda","jldb","jldc","jlea","jleb","jlec","jlfa","jlfb","jlfc","kjda","kjdb","kjdc","kjea","kjeb","kjec","kjfa","kjfb","kjfc","kkda","kkdb","kkdc","kkea","kkeb","kkec","kkfa","kkfb","kkfc","klda","kldb","kldc","klea","kleb","klec","klfa","klfb","klfc","ljda","ljdb","ljdc","ljea","ljeb","ljec","ljfa","ljfb","ljfc","lkda","lkdb","lkdc","lkea","lkeb","lkec","lkfa","lkfb","lkfc","llda","lldb","lldc","llea","lleb","llec","llfa","llfb","llfc"]
  p "3. Pass"
else
  p "3. Fail: #{letter_combos}"
end