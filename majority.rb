def majority_el(array)
  store = Hash.new 0
  max = array.length/2
  array.each do |el|
    store[el] += 1
    return el if store[el] > max
  end
end
