class WordFilter
  def initialize(words)
      @words = words
  end

  def f(prefix, suffix)
    new_words = @words.select do |word| 
      word[0..prefix.length - 1] == prefix && word[(word.length - suffix.length)..-1] == suffix
    end
    if new_words != []
      word = new_words[-1]
      return @words.index(word)
    else
      return -1
    end 
  end
end
  
words = ["cabaabaaaa","ccbcababac","bacaabccba","bcbbcbacaa","abcaccbcaa","accabaccaa","cabcbbbcca","ababccabcb","caccbbcbab","bccbacbcba"]
obj = WordFilter.new(words)

test_case_1 = obj.f("bccbacbcba", "a")
if test_case_1 == 9
  puts "test_case_1 pass: #{test_case_1}"
else
  puts "test_case_1 fail: #{test_case_1}"
end

test_case_2 = obj.f("ab", "abcaccbcaa")
if test_case_2 == 4
  puts "test_case_2 pass: #{test_case_2}"
else
  puts "test_case_2 fail #{test_case_2}"
end

test_case_3 = obj.f("a", "aa")
if test_case_3 == 5
  puts "test_case_3 pass: #{test_case_3}"
else
  puts "test_case_3 fail: #{test_case_3}"
end

test_case_4 = obj.f("cabaaba", "abaaaa")
if test_case_4 == 0
  puts "test_case_4 pass: #{test_case_4}"
else
  puts "test_case_4 fail: #{test_case_4}"
end

test_case_5 = obj.f("cacc", "accbbcbab")
if test_case_5 == 8
  puts "test_case_5 pass: #{test_case_5}"
else
  puts "test_case_5 fail: #{test_case_5}"
end

test_case_6 = obj.f("ccbcab", "bac")
if test_case_6 == 1
  puts "test_case_6 pass: #{test_case_6}"
else
  puts "test_case_6 fail: #{test_case_6}"
end

test_case_7 = obj.f("bac", "cba")
if test_case_7 == 2
  puts "test_case_7 pass: #{test_case_7}"
else
  puts "test_case_7 fail: #{test_case_7}"
end

test_case_8 = obj.f("ac", "accabaccaa")
if test_case_8 == 5
  puts "test_case_8 pass: #{test_case_8}"
else
  puts "test_case_8 fail: #{test_case_8}"
end

test_case_9 = obj.f("bcbb", "aa")
if test_case_9 == 3
  puts "test_case_9 pass: #{test_case_9}"
else
  puts "test_case_9 fail: #{test_case_9}"
end

test_case_10 = obj.f("ccbca", "cbcababac")
if test_case_10 == 1
  puts "test_case_10 pass: #{test_case_10}"
else
  puts "test_case_10 fail: #{test_case_10}"
end
