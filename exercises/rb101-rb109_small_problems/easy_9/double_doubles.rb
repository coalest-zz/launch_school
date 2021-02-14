def twice(num)
  if double_num?(num)
    num
  else
    num * 2
  end
end

def double_num?(num)
  length = num.to_s.size
  half = length / 2
  length.even? && (num.to_s[0, half] == num.to_s[half, half])
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10