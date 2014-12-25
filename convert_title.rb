def convert(num)
  alpha = ("A".."Z").to_a 
  indices = []
  column = ""
  q, r = (num - 1).divmod 26

  if q == 0
    indices.push r
  else
    indices.push r
    while q > 26
      q, r = (q-1).divmod 26
      indices.unshift r
    end
    indices.unshift q-1
  end
  indices.each do |i|
    column += alpha[i]
  end
  column
end
