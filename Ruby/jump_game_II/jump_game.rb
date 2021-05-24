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


