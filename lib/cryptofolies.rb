CHARS = [*?A..?Z], [*?a..?z]
def caesar_cipher (string, key)
  string.tr CHARS.join, CHARS.map{ |a| a.rotate key }.join
end
