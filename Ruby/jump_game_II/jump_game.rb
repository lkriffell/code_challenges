def jump(nums)
  max, submax, jump_count = 0, 0, 1

  lower_bound = 0 
  upper_bound = nums.size - 1
  max_bound = max
  return 0 if max >= upper_bound

  while true
      lower_bound.upto(max_bound) do |index|
        submax = index + nums[index]
        max = submax if max <  submax
        return jump_count if max >= upper_bound
      end

      jump_count += 1
      lower_bound, max_bound = max_bound + 1, max
  end
end

jumps = jump([2,3,1,1,4])
if jumps == 2
  puts "1. pass - #{jumps}"
else
  puts "1. fail - #{jumps}"
end

jumps = jump([1,5,3,2,8])
if jumps == 2
  puts "2. pass - #{jumps}"
else
  puts "2. fail - #{jumps}"
end

jumps = jump([1,1,1,1,1])
if jumps == 4
  puts "3. pass - #{jumps}"
else
  puts "3. fail - #{jumps}"
end

jumps = jump([5,1,7,1,1,1,1,1,1,4,4,4,1,1,1,4])
if jumps == 4
  puts "4. pass - #{jumps}"
else
  puts "4. fail - #{jumps}"
end