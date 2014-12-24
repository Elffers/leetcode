def convert(num)
  alpha = ("A".."Z").to_a 
  indices = []
  column = ""
  
  q, r = num.divmod(26)
  indices.push r
  if r == 0 && q == 0
    "Z"
  else
    alpha[r-1]
  end
end
