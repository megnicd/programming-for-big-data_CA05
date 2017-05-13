rm(list=ls()) #remove variablesfrom workspace
cls <- function() cat(rep("\n",100))
cls()

#1. add
add <- function(x, y) {
  return(x + y)
}
print(add(3,4))

#2. subtract
subtract <- function(x, y) {
  return(x - y)
}
print(subtract(3,4))

#3. multiply
multiply <- function(x, y) {
  return(x * y)
}
print(multiply(3,4))

#4. divide
divide <- function(x,y) {
  if(y == 0){ #guarding for 0 entries
    return ("Error, dividing by zero equals zero")
  } else {
    return(x/y)
  }
}
print(divide(3,4))

#5. sqrt
squareroot <-function(x) {
  return (sqrt(x))
}
print (squareroot(100))

#6. exponent
exponent <-function(x,y) {
  return (x**y)
}
print (exponent(2,3))

#7. factorial
factorial <- function(num) {
  if(num < 0) { #guarding for negative values
    print("Cannot perform this function on negative values")
  } else if(num == 0) { 'guarding for negative values'
    print("Error: the factorial of 0 is 1")
  } else {
    factorial = 1
    for(i in 1:num) {
      factorial = factorial * i
    }
    print(paste("The factorial of", num ,"is",factorial))
  }
}
print (factorial(4))

#8. cos
trig_cos <- function(x) {
  return(cos(x*pi/180))
}
print (cos(120))

#9. sin
trig_sin <- function(x) {
  return(sin(x*pi/180))
}
print (sin(120))

#10. tan
trig_tan <- function(x) {
  if(x %% 180 ==0){
    return (0)
  } else if(x%% 90 ==0){
    return ("error")
  } else {
    return (tan(x*pi/180))
  }
}
print (tan(90))

# #function to show menu
# showmenu <- function(x) 
#   print '~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~'
#   print "Enter '+' if you would like to add."
#   print "Enter '-' if you would like to subtract."
#   print "Enter 'div' if you would like to divide."
#   print "Enter '*' if you would like to multiply."
#   print "Enter 'exp' if you would like the exponent of a number."
#   print "Enter '!' if you would like the factorial of a number."
#   print "Enter 'sqrt' if you would like the root of a number."
#   print "Enter 'cos' if you would like the cos of a number."
#   print "Enter 'sin' if you would like the sin of a number."
#   print "Enter 'tan' if you would like the root of a number."    
#   print '~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~'


# get_double_input <- function(x,y) {
#   num1 = as.integer(readline(prompt="Enter first number: ")
#   num2 = as.integer(readline(prompt="Enter second number: ")
# }
# 
# get_single_input <- function(x) {
#   num1 = as.integer(readline(prompt="Enter number: ")
# }

getnumberinputs <- function() 
{ 
  numinputs = as.numeric(readline("Enter number of inputs [1 or 2]: "))
  if (numinputs == 1) {
    print("Select operation.")
    print("1.Add")
    print("2.Subtract")
    print("3.Multiply")
    print("4.Divide")
    choice = as.integer(readline(prompt="Enter choice[1/2/3/4]: "))
    
    num1 = as.integer(readline(prompt="Enter first number: "))
    num2 = as.integer(readline(prompt="Enter second number: "))
    
    operator <- switch(choice,"+","-","*","/")
    result <- switch(choice, add(num1, num2), subtract(num1, num2), multiply(num1, num2), divide(num1, num2))

print(getnumberinputs())
    
