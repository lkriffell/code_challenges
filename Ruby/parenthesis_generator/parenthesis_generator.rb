def generate_parenthesis(n)
  final = []
  possible_combos = []
  n.times do
      possible_combos << '('
      possible_combos << ')'
  end
  possible_combos = possible_combos.permutation(n * 2).to_a.uniq
  possible_combos.each_with_index do |combo, index| 
    if valid?(combo)
      possible_combos[index] = combo.join 
    else
      possible_combos[index] = nil
    end
  end
  possible_combos.compact
end

def valid?(combo)
  opened_parens = 0
  combo.each do |char|
      if char == '('
          opened_parens += 1
      elsif char == ')'
          opened_parens -= 1
      end
      return false if opened_parens < 0
  end
  return true if opened_parens == 0
end