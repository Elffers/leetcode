def convert(num)
  alpha = ("A".."Z").to_a 
  indices = []
  column = ""
  q, r = num.divmod(26)

  if q == 0
    indices.push r
  elsif q == 1 && r == 0
    column += "Z"
  elsif r == 0
    indices.push q-1, r
  else
    indices.push q, r
  end
  indices.each do |i|
    column += alpha[i-1]
  end
  column
end
