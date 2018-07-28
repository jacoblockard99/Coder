ALPHABET = [*("a".."z"), *(1..9), " "]
STRICT_ALPHABET = [*("a".."z"), *("A".."Z"), *(1..9), " ", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "_", "+", "=", "{", "}", "[", "]", "|", "\\", '<', '>', '.', ',', '?', '/']

def shift_char char, amt, strict = false
  char.downcase! unless strict
  alphabet = strict ? STRICT_ALPHABET : ALPHABET
  index = alphabet.find_index char
  return char if index.nil?
  alphabet[(index + amt) % alphabet.count]
end
