# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  	if arr.empty?
		return 0
	end

	sum = 0
	for i in (0...arr.size)
		sum += arr[i]
	end
	return sum
end

def max_2_sum arr
  	if arr.empty?
		return 0
	end
	if arr.size == 1
		return arr[0]
	end
	max1 = [arr[0], arr[1]].max
	max2 = [arr[0], arr[1]].min
	for i in (2...arr.size)
		if arr[i]>max1
			max2 = max1
			max1 = arr[i]
		elsif arr[i]>max2
			max2 = arr[i]
		end
	end
	return max1 + max2
end

def sum_to_n? arr, n
  	if arr.empty? or arr.size==1
		return false
	end
	m = Hash.new
	for i in 0...arr.size
		remain = n - arr[i]
		if (m.include?(remain))
			return true
		end
		m[arr[i]] = i
	end
	return false
end


# Part 2

def hello(name)
  	if name
		return "Hello, #{name}"
	else
		return 0
	end
end

def starts_with_consonant? s
  	if s.empty?
		return false
	end
	s = s.downcase
	return (s[0]=~/[bcdfghjklmnprstvwxyz]/)
end

def binary_multiple_of_4? s
	if s.empty? 
		return false
	end
  	binary = ['0', '1']
	for i in 0...s.size
		if !binary.include?(s[i])
			return false
		end
	end
	return s.to_i(2)%4==0
end

# Part 3

class BookInStock
	# attr_accessor :isbn
	# attr_accessor :price

	def initialize(isbn, price)
		if isbn.empty? or price<=0
			raise ArgumentError, "Illegal argument" 
		end
		@isbn = isbn
		@price = price
	end

	def isbn
		@isbn
	end
	def price
		@price
	end
	def isbn=(value)
		@isbn = value
	end
	def price=(value)
		@price = value
	end

	def price_as_string
		out = "$%0.2f" % [@price]
	end
end



