dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def sub_string(string, dictionary)
	sentence = string.split
	matches = []
	h = Hash.new(0)
	sentence.each do |part|
		dictionary.each  {|word| matches.push(word) if part.downcase.include? word }
	end
	matches.each {|item| h.store(item, h[item] + 1)}
	puts h
end

sub_string("Howdy partner, sit down! How's it going?", dictionary)