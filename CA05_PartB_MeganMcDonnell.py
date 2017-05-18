#iterator
def city_generator():
    yield("Konstanz")
    yield("Zurich")
    yield("Schaffhausen")
    yield("Stuttgart")
	
x = city_generator()	
print x.next()
print x.next()
print x.next()
print x.next()
#print x.next() 				#there isnt a 5th element so you get a stopiteration error

print "\n"

cities = city_generator()
for city in cities:
	print city

print "\n"	

#list generator
def fibonacci(n):
    """Fibonacci numbers generator, first n"""
    a, b, counter = 0, 1, 0
    while True:
        if (counter > n): return
        yield a
        a, b = b, a + b
        counter += 1

f = fibonacci(5) 		#yields the first 5 fibonacci lists as the programme calculates them
print x,
print	

#convert to celcius using list comprehension 
def fahrenheit(t):
    return ((float(9)/5)*t + 32)
def celsius(t):
    return (float(5)/9*(t - 32))
temp = (36.5, 37, 37.5, 39)

F = map(fahrenheit, temp)
print F
C = map(celsius, F)
print C

#max using reduce
def max(values):
	return reduce(lambda a,b: a if (a>b) else b, values)
	
print max([47, 11, 42, 13])	

#min using reduce
def min(values):
	return reduce(lambda a,b: a if (a<b) else b, values)
	
print min([47, 11])	

#add using reduce
def add(values):
	return reduce(lambda a,b: a+b, values)
	
print add([47, 11, 42, 13])	

#subtract using reduce
def sub(values):
	return reduce(lambda a,b: a-b, values)
	
print sub([47, 11])	

#multiply using reduce
def mul(values):
	return reduce(lambda a,b: a*b, values)
	
print mul([2,5])	

#divide using reduce
def div(values):
	return reduce(lambda a,b: a/float(b) if (b != 0 and a != 'Nan') else 'Nan', values)
	
print div([47, 'Nan', 0, 11])

#find even numbers using filter
def is_even(values):
	return filter(lambda x: x % 2 == 0, values)
	
print is_even([47, 11, 42, 13])	

#conversion using map
def to_fahrenheit(values):
	return map(fahrenheit, values)
	
print to_fahrenheit([0, 37, 40, 100])	
	
#conversion using map
def to_celsius(values):
	return map(celsius, values)	
	
print to_celsius([0, 32, 100, 212])

