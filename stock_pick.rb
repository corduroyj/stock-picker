def stock_picker(prices)

  #create default variables
  max_so_far = prices[-1]
  diff = 0
  pair = [0, 0]

  prices.reverse.each do |x|
    #need to check if the big number is before the small number index

    if x >= max_so_far
      max_so_far = x
    else
      diff = max(diff, (max_so_far - x))
      pair = [x, max_so_far]
      #max_so_far holds the max value until an x fails
      #which fixes the problem of large numbers in the
      #beginning spots of the array becoming the max incorrectly
    end
  end
  return pair
end

def max(x, y)
  if x > y
    return x
  else y > x
    return y   end
  # will return y if equal (y is x so doesn't matter)
end

print stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
