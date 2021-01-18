def palindromic_number?(int)
	ints = int.digits.reverse
	ints.map.with_index do |int, idx|
		next_idx = idx + 1
		if int == 0 && int[next_idx] != 0 
			ints.delete(int)
		else
			int
		end 
  end
  p int
	int = ints.join 
	int == int.reverse
end

p palindromic_number?(00100)
