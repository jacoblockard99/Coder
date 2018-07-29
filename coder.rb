#!/bin/ruby

require_relative 'cli_tools.rb'
require_relative 'encryption.rb'
require 'optparse'

options = {
  method: :encrypt,
  text: "example text",
  strict: false,
  key: "examplekey"
}

OptionParser.new do |parser|
  parser.banner = "Usage: coder [options]"

  parser.on("-h", "--help", "Show this help message") do
    puts parser
    exit
  end

  parser.on("-e", "--encrypt", "Encrypts text (default)") do
  end

  parser.on("-d", "--decrypt", "Decrypts text") do
    options[:method] = :decrypt
  end
  
  parser.on("-t", "--text TEXT", "The text to encrypt or decrypt") do |v|
    options[:text] = v
  end
  
  parser.on("-f", "--file PATH", "Encrypt or decrypt a file instead") do |v|
    options[:file] = v
  end

  parser.on("-k", "--key KEY", "Specify a key to use") do |v|
    options[:key] = v
  end

  parser.on("-s", "--strict", "Keeps capital letters and encrypts punctuation") do
    options[:strict] = true
  end
end.parse!

t = options[:text]
k = options[:key]
e = options[:method] == :encrypt
m_text = e ? "encrypted" : "decrypted"
e_text = t.encrypt k, options[:strict], !e
line = "-" * (e_text.length+2) + "=" * (e_text.length+1)

if e_text.length < 25
  puts line
  puts "#{t} ➜ #{e_text}"
  puts line
  puts
  puts "\"#{t}\" was #{m_text} to \"#{e_text}\" using key: \"#{k}\""
else
  puts
  puts t
  puts
  puts
  puts e_text
  puts
end
  
