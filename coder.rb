#!/bin/ruby

# Display a welcome message
def welcome
  puts "Welcome to the Coder app! Just type in any alphanumeric string and Coder will encrypt it for you!"
end

# Request the user for a string and return the result
# If the input is not an alphanumeric string then the method will display a warning and request the string again
def ask message, error = false
  puts "Please enter letters and numbers only!" if error
  puts message
  gets
end

welcome
