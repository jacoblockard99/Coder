#!/bin/ruby

require_relative 'cli_tools.rb'

# Display a welcome message
def welcome
  puts "Welcome to the Coder app! Just type in any alphanumeric string and Coder will encrypt it for you!"
end

welcome
puts ask_options "Are you sure?", ["yes", "no", "maybe"]
#input = ask_alphanumeric "What would you like to encrypt?"
