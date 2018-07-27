#!/bin/ruby

require_relative 'cli_tools.rb'
require 'optparse'

options = {
  method: :encrypt,
  text: "example text",
}

OptionParser.new do |parser|
  parser.banner = "Usage: coder [options]"

  parser.on("-h", "--help", "Show this help message") do
    puts parser
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
end.parse!
