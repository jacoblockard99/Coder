def shift_char char, amt, alphabet, strict = false
  char.downcase! unless strict
  index = alphabet.find_index char
  return char if index.nil?
  alphabet[(index + amt) % alphabet.count]
end

def encrypt_string string, key, alphabet, strict = false, decrypt = false
  encrypted = ""
  string.chars.each_with_index do |char, i|
    amt = alphabet.find_index(key.chars[i % key.length])
    encrypted += shift_char char, decrypt ? -amt : amt, alphabet, strict
  end
  encrypted
end
alias encrypt encrypt_string

def decrypt_string string, key, alphabet, strict = false
  encrypt_string string, key, alphabet, strict, true
end
alias decrypt decrypt_string

class String
  def encrypt key, alphabet, strict = false, decrypt = false
    encrypt_string self, key, alphabet, strict, decrypt
  end

  def decrypt key, alphabet, strict = false
    decrypt_string self, key, alphabet, strict
  end
end
