def oxford_comma(array)
  
  case array.size 
  
  when 0 # Not necessary per se, but it covers an edge case.
    array[0]
  when 1 
    array[0]
  when 2 
    array.join(" and ")
  else
    # last = array.pop # This is destructive!
    last = array.slice(-1) # This is non-destructive.
    array.join(", ") + ", and " + last
  end
  
end