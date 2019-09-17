# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr == []
  	return 0
  else
  	s = 0
  	arr.each {|x| s = (s + x)}
  		return s
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr == []
  	return 0
  elsif arr.length == 1
  	return arr[0]
  elsif arr.length == 2
  	s = 0
  	arr.each {|x| s = (s + x)}
  	return s
  else
  	arr.sort! { |x,y| y <=> x }
    s = arr[0] + arr[1]
    return s
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length <= 1
  	return false
  else
  	arr.each do |x|
  		arr.each do |y|
  			next if x == y
  			return true if x + y == n
  		end
  	end
  	return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
