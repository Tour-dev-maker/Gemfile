require_relative '../lib/word_counter'

describe "the word counter methode" do
  it "should be return hash of word counter" do
    expect(word_counter("Howdy partner, sit down! How's it going?",["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}) 
    
    expect(word_counter(open("../lib/shakespeare.txt").read,["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"])).to eq({"the"=>51860, "of"=>20609, "and"=>32649, "to"=>29497, "a"=>289150, "in"=>53781, "for"=>13993, "is"=>36817, "on"=>33631, "that"=>11554, "by"=>4998, "this"=>6916, "with"=>9201, "i"=>253990, "you"=>22206, "it"=>29513, "not"=>10951, "or"=>40601, "be"=>20757, "are"=>6584})
    
    expect(word_counter(File.read("../lib/shakespeare.txt"),File.read("../lib/gros_mots.txt").split("\r\n"))).to eq({"anal"=>3, "anus"=>267, "arse"=>33, "ass"=>1958, "balls"=>20, "bastard"=>234, "bitch"=>3, "bloody"=>229, "bum"=>8, "butt"=>71, "cock"=>81, "crap"=>11, "damn"=>164, "dick"=>106, "dildo"=>1, "fag"=>2, "feck"=>1, "hell"=>534, "homo"=>1, "jerk"=>15, "muff"=>21, "nigga"=>13, "omg"=>1, "piss"=>4, "poop"=>2, "prick"=>71, "sex"=>46, "s hit"=>16, "slut"=>11, "tit"=>707, "turd"=>4, "whore"=>104})
  end
end
