# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each { |x| sum += x }
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    sorted_arr = arr.sort
    sorted_arr[-1] + sorted_arr[-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length < 2
    false
  else
    seen_numbers = Set.new
    arr.each do |num|
      complent = n - num
      return true if seen_numbers.include?(complent)
      seen_numbers.add(num)
    end
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  pattern = Regexp.new(/^[bcdfghjklmnpqrstvwxyz]/i)
  pattern.match?(s)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s.to_i % 4 == 0 && (s.to_i != 0 || s == "0")
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn, @price = isbn, price
  end

  def price_as_string
    "$#{'%.2f' % price}"
  end
end
