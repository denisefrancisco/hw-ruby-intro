# When done, submit this entire file to the autograder.
# Part 1

def sum arr
  total = 0
  arr.each { |x| total += x} 
  return total
end

def max_2_sum arr
  if arr.length ==0
    return 0
  elsif arr.length ==1
    return arr[0]
  else
    max1 = arr.max
    arr.delete_at(arr.index(max1))
    max2 = arr.max
    return max1+max2
  end
end
def sum_to_n? arr, n
  if arr.length == 0 || arr.length == 1
    return false
  else
    for i in 0...arr.length do
      for j in i+1...arr.length do
        if arr[i] + arr[j] ==n
          return true
        end
      end
    end
    return false  
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end
#we will come back to this
def starts_with_consonant? s
  cond1 =  /[[:alpha:]]/ =~ s
  cond2 = /[^aeiouAEIOU]/ =~ s
  if cond1 != 0 
    return false
  else
    if cond2 == 0
      return true
    else
      return false
    end
  end
  return false
end

def binary_multiple_of_4? s
  condition = /\A[01]+00\Z/ =~ s
  if condition == 0 || s == "0"
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :price
  attr_accessor :isbn
  def initialize(isbn, price)
    @isbn = isbn 
    @price = price
    checkArgs(isbn,price)
  end
  
  def checkArgs(isbn,price)
    if isbn == "" || price <= 0.0 
      raise ArgumentError
    end
  end
  
  def price_as_string()
    if price.is_a? Integer
      return "$#{price}.00"
    elsif price.is_a? Float
      point_index = /[.]/ =~ price.to_s
      if price.to_s.length - point_index > 2
        return "$#{price.round(2)}"
      else
        return "$#{price}0"
      end
    end
  end
end
