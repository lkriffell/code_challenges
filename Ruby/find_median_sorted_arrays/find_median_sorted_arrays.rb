def find_median_sorted_arrays(nums1, nums2)
  all_nums = (nums1 + nums2).sort
  if all_nums.length % 2 != 0
      all_nums[((all_nums.length / 2.0) -1).round]
  else
      split_nums = all_nums.each_slice(all_nums.length/2).to_a
      (split_nums[0].last + split_nums[1].first) / 2.0
  end
end