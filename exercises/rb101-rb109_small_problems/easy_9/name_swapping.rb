def swap_name(name)
  names = name.split
  "#{names.last}, #{names.first}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'