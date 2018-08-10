def oxford_comma(array)
  
  case array.size 
  
  when 0 # Not necessary per se, but it covers an edge case.
    array[0]
  when 1 
    array[0]
  when 2 
    array.join(" and ")
  else
    # last = array.slice(-1) # This would cause the last element to be repeated.
    last = array.pop # This works, but it's also destructive!
    array.join(", ") + ", and " + last
  end
  
end