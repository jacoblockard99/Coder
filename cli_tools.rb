class String
  # Test if a string is alphanumeric
  def alphanumeric?
    return false if empty?
    !match(/\A[a-zA-Z0-9]*\z/).nil?
  end
end

# Request the user for a string and return the result
def ask message
  print "#{message} "
  gets.chomp
end
alias request ask

# Request the user for a string and return the result
# If the input is not an alphanumeric string then the method will display a warning and request the string again
def ask_alphanumeric message, error = false
  puts "Please enter letters and numbers only!" if error
  input = ask message
  return input if input.alphanumeric?
  ask_alphanumeric message, true
end
alias request_alphanumeric ask_alphanumeric 

def ask_options message, options = ["yes", "no"], error = false
  puts opt_msg(options) if error
  input = ask("#{message} (#{options.join ", "})").downcase
  return input if options.include? input
  ask_options message, options, true
end
alias request_options ask_options

def options_message options
  message = "Please enter "
  if options.count < 3
    message += "either #{options.first} or #{options.last}!"
  else
    list = options.join(", ")
    message += "one of the following: #{list}"
  end
  message
end
alias opt_msg options_message
