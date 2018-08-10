def oxford_comma(array)
  # Note that I'm not expecting an empty array.
  
  case array.size 
  
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