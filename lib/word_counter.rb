def word_counter( string, dictionary )
  array_of_count = dictionary.map { | e | string.downcase.scan(e).length  }
  return dictionary.zip( array_of_count ).to_h.select{ | key, value | value != 0 }
end

#puts word_counter("Howdy partner, sit down! How's it going?",["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])
#puts  word_counter( open("shakespeare.txt").read,["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"])
#puts word_counter(File.read("shakespeare.txt"),File.read("gros_mots.txt").split("\r\n"))

