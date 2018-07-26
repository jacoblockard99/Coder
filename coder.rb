#!/bin/ruby

class String
  # Test if a string is alphanumeric
  def alphanumeric?
    !match(/\A[a-zA-Z0-9]*\z/).nil?
  end
end

# Display a welcome message
def welcome
  puts "Welcome to the Coder app! Just type in any alphanumeric string and Coder will encrypt it for you!"
end

# Request the user for a string and return the result
# If the input is not an alphanumeric string then the method will display a warning and request the string again
def ask message, error = false
  puts "Please enter letters and numbers only!" if error
  puts message
  input = gets.chomp
  return input if input.alphanumeric?
  ask message, true
end

welcome
input = ask "What would you like to encrypt?"
