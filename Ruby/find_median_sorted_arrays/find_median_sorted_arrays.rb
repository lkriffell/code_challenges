def find_median_sorted_arrays(nums1, nums2)
  all_nums = (nums1 + nums2).sort
  if all_nums.length % 2 != 0
      all_nums[((all_nums.length / 2.0) -1).round]
  else
      split_nums = all_nums.each_slice(all_nums.length/2).to_a
      (split_nums[0].last + split_nums[1].first) / 2.0
  end
end

median = find_median_sorted_arrays([1], [2, 3])
if median == 2
  p "1. Pass: #{median}"
else
  p "1. Fail: #{median} should be 2"
end

median = find_median_sorted_arrays([1, 4], [2, 3])
if median == 2.5
  p "1. Pass: #{median}"
else
  p "1. Fail: #{median} should be 2.5"
end

median = find_median_sorted_arrays([1, 4, 17, 12, 2, 10, 4], [10, 5, 7, 33, 14, 32, 9, 3])
if median == 9
  p "1. Pass: #{median}"
else
  p "1. Fail: #{median} should be 9"
end

median = find_median_sorted_arrays([2, 3, 5, 8], [10, 12, 14, 16, 18, 20])
if median == 11
  p "1. Pass: #{median}"
else
  p "1. Fail: #{median} should be 11"
end