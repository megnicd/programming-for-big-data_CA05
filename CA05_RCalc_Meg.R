# Program make a simple calculator
# that can add, subtract, multiply
# and divide using functions

rm(list=ls()) #remove variablesfrom workspace
cls <- function() cat(rep("\n",100))
cls() #clear the console

#1 add
add <- function(x, y) {
  return(x + y)
}

#2 subtract
subtract <- function(x, y) {
  return(x - y)
}

#3 multiply
multiply <- function(x, y) {
  return(x * y)
}

#4 divide
divide <- function(x,y) {
  if(y == 0){ #guarding for 0 entries
    return ("Error, dividing by zero equals zero")
  } else {
    return(x/y)
  }
}

#5 exponent
exponent <-function(x,y) {
  return (x**y)
}

#6
factorial <- function(x){
  y <- 1
  for(i in 1:x){
    y <-y*((1:x)[i])
  }
  return(y)
}

# #6 factorial
# factorial <- function(num) {
#   if(num < 0) {
#     print("Sorry, factorial does not exist for negative numbers")
#   } else if(num == 0) {
#     print("The factorial of 0 is 1")
#   } else {
#     factorial = 1
#     for(i in 1:num) {
#       factorial = factorial*((1:num)[i])
#     }
#     return(factorial(num))
#   }
# }

#7 cos
trig_cos <- function(x) {
  return(cos(x*pi/180))
}

#8 sin
trig_sin <- function(x) {
  return(sin(x*pi/180))
}

#9 tan
trig_tan <- function(x) {
  if(x %% 180 ==0){
    return (0)
  } else if(x%% 90 ==0){
    return ("Undefined")
  } else {
    return (tan(x*pi/180))
  }
}

#10 sqrt
squareroot <-function(x) {
  return (sqrt(x))
}


# define menu for user
print("Please select an operator: ")
print("*****************")
print("1. Add")
print("2. Subtract")
print("3. Multiply")
print("4. Divide")
print("5. Exponentiate")
print("6. Factorial")
print("7. Cos")
print("8. Sin")
print("9. Tan")
print("10. Sqrt")
print("*****************")
print("Note that choices 1-5 will require two numerical inputs, while choices 6-10 will only require one.")
print("To quit at any time, enter the letter 'Q'.")

choice = readline(prompt="Enter choice[1/2/3/4/5/6/7/8/9/10]: ")

if(choice == 1 | choice == 2 | choice == 3| choice == 4| choice == 5){
  num1 = as.numeric(readline(prompt="Enter first number: "))
  num2 = as.numeric(readline(prompt="Enter second number: "))
  operator <- switch(choice,"+","-","*","/","**")
  result <- switch(choice, add(num1, num2), subtract(num1, num2), multiply(num1, num2), divide(num1, num2), exponent(num1, num2), exponent(num1, num2))
  print(paste("Answer:",num1, operator, num2, "=", result))
} else if(choice == 6 | choice == 7 | choice == 8 | choice == 9 | choice == 10){
  num = as.numeric(readline(prompt="Enter number: "))
  operator <- switch(choice-5,"!","cos","sin","tan","sqrt")
  result <- switch(choice-5, factorial(num), trig_cos(num), trig_sin(num), trig_tan(num), sqrt(num))
  print(paste("Answer: ",num, operator, "=", result))
} else {
  print("Invalid input, please select an option between 1 and 10.")
  }
print("If you would like to perform another calculation, hold Ctrl, Shift & S.")
  