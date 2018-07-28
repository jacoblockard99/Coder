ALPHABET = [*("a".."z"), *(1..9), " "]
STRICT_ALPHABET = [*("a".."z"), *("A".."Z"), *(1..9), " ", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "_", "+", "=", "{", "}", "[", "]", "|", "\\", '<', '>', '.', ',', '?', '/']

def shift_char char, amt, strict = false
  char.downcase! unless strict
  alphabet = strict ? STRICT_ALPHABET : ALPHABET
  index = alphabet.find_index char
  return char if index.nil?
  alphabet[(index + amt) % alphabet.count]
end

def encrypt_string string, key, strict = false, decrypt = false
  alphabet = strict ? STRICT_ALPHABET : ALPHABET
  encrypted = ""
  string.chars.each_with_index do |char, i|
    amt = alphabet.find_index(key.chars[i % key.length])
    encrypted += shift_char char, decrypt ? -amt : amt, strict
  end
  encrypted
end
alias encrypt encrypt_string

def decrypt_string string, key, strict = false
  encrypt_string string, key, strict, true
end
alias decrypt decrypt_string

class String
  def encrypt key, strict = false
    replace(encrypt_string self, key, strict)
  end

  def decrypt key, strict = false
    replace(decrypt_string self, key, strict)
  end
end
