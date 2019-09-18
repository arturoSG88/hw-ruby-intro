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
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.start_with?('A','E','I','O','U','a','e','i','o','u') || s.size == 0 || s[/[a-zA-Z]+/]  != s
  	return false
  else
  	return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s.to_s =~ /\b[01]+\b/ && s.to_i % 4 == 0)
	return true
  else
	return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError if @isbn == "" || @price < 1
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(str)
    @isbn = str
  end
  
  def price=(f)
    @price = f
  end
  
  def price_as_string
    price_string = sprintf('%.2f', @price)
    return "$%s" % price_string
  end
end
