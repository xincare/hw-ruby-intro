# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  array=arr.sort
  sum(array.last(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.permutation(2).to_a.any? {|a,b| a+b==n}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " << name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  else
    /\A+[a-z&&[^aeiou]]/ =~ s.downcase
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty? or /[a-z]/=~s
    return false
  elsif s.to_i(2)%4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize (isbn,price)
    raise ArgumentError.new("invalid isbn") if isbn.empty? 
    raise ArgumentError.new("invalid price") if price <= 0 
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(i)
    @isbn = i
  end
  def price=(p)
    @price = p
  end
  def price_as_string
    "$" << ('%.2f' %price).to_s
  end
end
