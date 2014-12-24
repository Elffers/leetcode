def compare_version(v1, v2)
  v1 = v1.split('.')
  v2 = v2.split('.')
  l1 = v1.length
  l2 = v2.length
  if l1 < l2
    while v1.length < l2
      v1.push 0
    end
  end
  if l1 > l2
    while l1 > v2.length
      v2.push 0
    end
  end
  zipped = v1.zip v2
  zipped.each_with_index do |pair, i|
    a = pair.first.to_i
    b = pair.last.to_i
    return 1 if a > b
    return -1 if a < b
    return 0 if i == zipped.length - 1
  end
end
