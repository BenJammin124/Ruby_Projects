dictionary = ["below","down","go","going","horn","how","howdy",
"it","i","low","own","part","partner","sit"]

def substrings(str, arr)
  result = []

  arr.each {|word| str.downcase.scan(word) {result.push(word)}}

  p result.tally

end

substrings("Howdy partner, sit down! How's it going?", dictionary)
