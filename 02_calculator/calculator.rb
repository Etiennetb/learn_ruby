#write your code here

def add(a,b)
	a + b
end

def subtract(a,b)
	a - b
end

def sum(array)
	array.inject(0) {|sum, i|  sum + i }
end


# correction Felix
def multiply(array_of_numbers)
  multiplication = 1
  array_of_numbers.each do |number|
    multiplication = number * multiplication
  end
  multiplication
end




 