def echo(word)
	word
end

def shout(word)
	word.upcase
	end

def repeat(word, n=2)
	([word]*n).join(' ')
end

def start_of_word(word, letter)
	word[0,letter]
end

def first_word(sentence, word=1)
	sentence.split[word-1]
end

def titleize(sentence)
	array = sentence.split
	array.each do |i|
		i.capitalize! unless (i == "and" || i == "or" || i == "the" || i == "over" )
	end
	array[0].capitalize!
	array.join(' ')
end